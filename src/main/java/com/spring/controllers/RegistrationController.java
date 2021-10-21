package com.spring.controllers;

import com.file.SavingFiles;
import com.spring.entities.User;
import com.spring.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import javax.validation.Valid;
import java.util.UUID;

/**
 * Класс-контроллер, обрабатывающий запросы, связанные с регистрацией
 * @author Altukhov Alexey
 * @version 1.0
 */
@Controller
public class RegistrationController {

    /**Пользовательский сервис*/
    @Autowired
    private UserService userService;

    /**Путь к хранилищу пользовательских фотографий*/
    private String pathUserPhoto = "D:\\Политех 2021\\Web-ориентированное программирование\\Курсовая\\Проект 'Твой путь'\\src\\main\\storage\\user\\images\\";

    /**
     * Метод обработки get запросов по адресу "/registration/account"
     * @param model модель данных
     * @return возвращает jsp страницу registration_account
     */
    @GetMapping("/registration/account")
    public String registrationAccount(Model model) {
        model.addAttribute("userForm", new User());
        return "registration_account";
    }

    /**
     * Метод обработки post запросов по адресу "/registration/account"
     * @param model модель данных
     * @param userForm объект класса User, полученный из формы регистрации
     * @return возвращает ссылку на страницу, расположенную по адресу "/registration/profile/{idUser}" или шаблон
     * текущей страницы, если пользователь с таким именем уже существует
     */
    @PostMapping("/registration/account")
    public String saveUser(@ModelAttribute("userForm") @Valid User userForm,  Model model) {
        if (!userService.saveUser(userForm)){
            model.addAttribute("usernameError", "Пользователь с таким именем уже существует");
            return "registration_account";
        }
        return "redirect:/registration/profile/"+userForm.getId().toString();
    }

    /**
     * Метод обработки get запросов по адресу "/registration/profile/{idUser}"
     * @return возвращает jsp страницу registration_profile
     */
    @GetMapping("/registration/profile/{idUser}")
    public String registrationProfile() {
        return "registration_profile";
    }

    /**
     * Метод обработки post запросов по адресу "registration/profile/{idUser}"
     * @param idUser id пользователя, которому принадлежит профиль
     * @param surname фамилия
     * @param name имя
     * @param patronymic отчество
     * @param age возраст
     * @param photo фотография
     * @return возвращает ссылку на страницу с авторизацией
     */
    @PostMapping("registration/profile/{idUser}")
    public String saveProfile(@PathVariable(value = "idUser") UUID idUser, @RequestParam("surname") String surname,
                             @RequestParam ("name") String name, @RequestParam ("patronymic") String patronymic,
                             @RequestParam ("age") byte age, @RequestParam ("photo") MultipartFile photo) {
        String nameOriginalPhoto = photo.getOriginalFilename();
        String fullName = UUID.randomUUID().toString() + nameOriginalPhoto;
        if (SavingFiles.put(photo, pathUserPhoto, fullName))
            userService.saveProfile(idUser, surname, name, patronymic, age, fullName);
        else
            userService.saveProfile(idUser, surname, name, patronymic, age, "default.png");
        return "redirect:/login";
    }

    /**
     * Метод обработки get запросов по адресу "registration/profile/error/{idUser}"
     * @param model модели данных
     * @param idUser id пользователя
     * @return возвращает jsp страницу registration_profile_error
     */
    @GetMapping("registration/profile/error/{idUser}")
    public String registrationProfileError(Model model, @PathVariable(value = "idUser") UUID idUser) {
        model.addAttribute("idUser", idUser);
        return "registration_profile_error";
    }
}
