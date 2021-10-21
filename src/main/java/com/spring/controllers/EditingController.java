package com.spring.controllers;

import com.file.SavingFiles;
import com.spring.entities.Profile;
import com.spring.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import java.util.UUID;

/**
 * Класс-контроллер, обрабатывающий запросы, связанные с редактированием данных
 * @author Altukhov Alexey
 * @version 1.0
 */
@Controller
public class EditingController {

    /**Пользовательский сервис*/
    @Autowired
    private UserService userService;

    /**Путь к хранилищу пользовательских фотографий*/
    private String pathUserPhoto = "D:\\Политех 2021\\Web-ориентированное программирование\\Курсовая\\Проект 'Твой путь'\\src\\main\\storage\\user\\images\\";

    /**
     * Метод обработки get запросов по адресу "/profile/editing"
     * @param model модель данных
     * @return возвращает jsp страницу editing_profile
     */
    @GetMapping("/profile/editing")
    public String editProfile(Model model) {
        Profile profile = userService.getProfileByIdUser(userService.getCurrentUser().getId());
        model.addAttribute("profile", profile);
        return "editing_profile";
    }

    /**
     * Метод обработки post запросов по адресу "/profile/editing"
     * @param surname фамилия
     * @param name имя
     * @param patronymic отчество
     * @param age возраст
     * @param photo фотография пользователя
     * @return возвращает переадресацию на главную страницу
     */
    @PostMapping("/profile/editing")
    public String saveChangeProfile(@RequestParam("surname") String surname,
                                    @RequestParam ("name") String name, @RequestParam ("patronymic") String patronymic,
                                    @RequestParam ("age") byte age, @RequestParam ("photo") MultipartFile photo) {
        String nameOriginalPhoto = photo.getOriginalFilename();
        String fullName = UUID.randomUUID().toString() + nameOriginalPhoto;
        if (SavingFiles.put(photo, pathUserPhoto, fullName))
            userService.saveProfile(userService.getCurrentUser().getId(), surname, name, patronymic, age, fullName);
        else
            userService.saveProfile(userService.getCurrentUser().getId(), surname, name, patronymic, age, userService.getProfileByIdUser(userService.getCurrentUser().getId()).getNamePhoto());
        return "redirect:/";
    }
}
