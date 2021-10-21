package com.spring.service;

import com.random.ExceptionRandom;
import com.random.Random;
import com.spring.entities.*;
import com.spring.repositories.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import java.util.*;

/**
 * Класс, представляющий собой сервис для работы с пользователем
 * @author Altukhov Alexey
 * @version 1.0
 */
@Service
public class UserService implements UserDetailsService {

    /**Репозиторий таблицы User*/
    @Autowired
    private UserRepository userRepository;
    /**Репозиторий таблицы Profile*/
    @Autowired
    private ProfileRepository profileRepository;
    /**Репозиторий таблицы History*/
    @Autowired
    private HistoryRepository historyRepository;
    /**Репозиторий таблицы State*/
    @Autowired
    private StateRepository stateRepository;
    /**Репозиторий к таблице Past*/
    @Autowired
    private PastRepository pastRepository;
    /**Репозиторий к таблице Fate*/
    @Autowired
    private FateRepository fateRepository;
    /**Бин для шифрования пароля*/
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    /**
     * Метод получения пользователя по его логину
     * @param username логин пользователя
     * @return возвращает пользователя с указанным логином
     * @throws UsernameNotFoundException исключение, возникающее в случае, когда пользователь не найден
     */
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepository.findByUsername(username);
        if (user==null)
            throw new UsernameNotFoundException("User not found");
        return user;
    }

    /**
     * Метод регистрации нового пользователя
     * @param user объект класса User, который нужно сохранить в БД
     * @return возвращает true в случае успешной регистрации, иначе false
     */
    public boolean saveUser(User user) {
        User userFromDB = userRepository.findByUsername(user.getUsername());

        if (userFromDB != null) {
            return false;
        }

        user.setRoles(Collections.singleton(new Role(1L, "Пользователь не найден")));
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        userRepository.save(user);
        return true;
    }

    /**
     * Метод получения текущего пользователя
     * @return возвращает текущего пользователя
     */
    public User getCurrentUser() {
        User user = null;
        if (!(SecurityContextHolder.getContext().getAuthentication().getPrincipal() instanceof String))
            user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return user;
    }

    /**
     * Метод сохранения профиля пользователя
     * @param idUser id пользователя, на который создаётся профиль
     * @param surname фамилия
     * @param name имя
     * @param patronymic отчество
     * @param age возраст
     * @param namePhoto название фото
     */
    public void saveProfile(UUID idUser, String surname, String name, String patronymic, byte age, String namePhoto)
    {
        Profile profile = getProfileByIdUser(idUser);
        if (profile==null)
            profile = new Profile(idUser, surname, name, patronymic, age, namePhoto);
        else {
            profile.setSurname(surname);
            profile.setName(name);
            profile.setPatronymic(patronymic);
            profile.setAge(age);
            profile.setNamePhoto(namePhoto);
        }
        profileRepository.save(profile);
    }

    /**
     * Метод получения профиля по id пользователя
     * @param idUser id пользователя
     * @return возвращает профиль пользователя с указанным id
     */
    public Profile getProfileByIdUser(UUID idUser) {
        return profileRepository.findProfileByIdUser(idUser);
    }

    /**
     * Метод, фиксирующий в базе данных дату и время захода пользователя на сайт
     * @param idUser id пользователя
     */
    public void saveHistory(UUID idUser) {
        historyRepository.save(new History(idUser, new Date()));
    }

    /**
     * Метод получения количества посещений текущего пользователя
     * @return возвращает количество посещений пользователя
     */
    public Long getCountVisitsCurrentUser() {
        return historyRepository.countByIdUser(getCurrentUser().getId());
    }

    /**
     * Метод получения даты захода текущего пользователя
     * @return возвращает последнюю дату захода текущего пользователя
     */
    public Date getDateVisitCurrentUser() {
        return historyRepository.findFirstByIdUserOrderByDateDesc(getCurrentUser().getId()).getDate();
    }

    /**
     * Метод получения национальности человека
     * @return возвращает список LinkedHashMap с национальностями и их процентным соотношением
     * @throws ExceptionRandom исключение, возникающее при работе с классом Random
     */
    public LinkedHashMap<String, Integer> determineNationality() throws ExceptionRandom {
        LinkedHashMap<String, Integer> nationality = new LinkedHashMap<>();
        int priorityOne = Random.getRandomFromArrayWithProbability(new int[] {1, 2, 3, 4, 5}, new double[] {0.7, 0.2, 0.07, 0.02, 0.01});
        int priorityTwo = Random.getRandomFromArrayWithProbability(new int[] {1, 2, 3, 4, 5}, new double[] {0.6, 0.28, 0.09, 0.02, 0.01});;
        int priorityThree = Random.getRandomFromArrayWithProbability(new int[] {1, 2, 3, 4, 5}, new double[] {0.5, 0.3, 0.1, 0.07, 0.03});;
        int priorityFour = Random.getRandomFromArrayWithProbability(new int[] {1, 2, 3, 4, 5}, new double[] {0.4, 0.3, 0.15, 0.08, 0.07});;

        int probabilityOne = Random.getRandomNumberInRange(40, 96);
        int probabilityTwo = Random.getRandomNumberInRange(1, (97 - probabilityOne));
        int probabilityThree = Random.getRandomNumberInRange(1, (98-probabilityOne-probabilityTwo));
        int probabilityFour = 100 - probabilityOne - probabilityTwo - probabilityThree;

        Integer[] probability = {probabilityOne, probabilityTwo, probabilityThree, probabilityFour};
        Arrays.sort(probability, Collections.reverseOrder());

        List<State> statesOne= stateRepository.findAllByPriority(priorityOne);
        List<State> statesTwo= stateRepository.findAllByPriority(priorityTwo);
        List<State> statesThree= stateRepository.findAllByPriority(priorityThree);
        List<State> statesFour= stateRepository.findAllByPriority(priorityFour);

        while (nationality.size()!=4) {
            nationality.clear();
            nationality.put(statesOne.get(Random.getRandomNumberInRange(0, statesOne.size()-1)).getName(), probability[0]);
            nationality.put(statesTwo.get(Random.getRandomNumberInRange(0, statesTwo.size()-1)).getName(), probability[1]);
            nationality.put(statesThree.get(Random.getRandomNumberInRange(0, statesThree.size()-1)).getName(), probability[2]);
            nationality.put(statesFour.get(Random.getRandomNumberInRange(0, statesFour.size()-1)).getName(), probability[3]);
        }

        return nationality;
    }

    /**
     * Метод получения предназначения человека
     * @return возвращает объект класса Fate
     */
    public Fate getFate() {
        List<Fate> fate = fateRepository.findAll();
        return fate.get(Random.getRandomNumberInRange(0, fate.size()-1));
    }

    /**
     * Метод получения прошлого человека
     * @return возвращает объект класса Past
     */
    public Past getPast() {
        List<Past> pasts = pastRepository.findAll();
        return pasts.get(Random.getRandomNumberInRange(0, pasts.size()-1));
    }
}
