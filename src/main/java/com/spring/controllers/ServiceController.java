package com.spring.controllers;

import com.random.ExceptionRandom;
import com.spring.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Класс-контроллер, обрабатывающий запросы, связанным с предоставлением услуг
 * @author Altukhov Alexey
 * @version 1.0
 */
@Controller
public class ServiceController {

    /**Пользовательский сервис*/
    @Autowired
    private UserService userService;

    /**
     * Метод обработки get запросов по адресу "/definition/nationality"
     * @param model модель данных
     * @return возвращает jsp страницу nationality
     * @throws ExceptionRandom исключение, связанное с работой класса Random
     */
    @GetMapping("/definition/nationality")
    public String determineNationality(Model model) throws ExceptionRandom {
        model.addAttribute("nationality", userService.determineNationality());
        model.addAttribute("namePhoto", userService.getProfileByIdUser(userService.getCurrentUser().getId()).getNamePhoto());
        return "nationality";
    }

    /**
     * Метод обработки get запросов по адресу "/definition/fate"
     * @param model модель данных
     * @return возвращает js страницу fate
     */
    @GetMapping("/definition/fate")
    public String findDestination(Model model) {
        model.addAttribute("fate", userService.getFate());
        return "fate";
    }

    /**
     * Метод обработки get запросов по адресу "/definition/past"
     * @param model модель данных
     * @return возвращает jsp страницу past
     */
    @GetMapping("/definition/past")
    public String seePast(Model model) {
        model.addAttribute("past", userService.getPast());
        return "past";
    }
}
