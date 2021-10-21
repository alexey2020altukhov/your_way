package com.spring.controllers;

import com.spring.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Класс-контроллер, обрабатывающий запросы, связанные с историей посещения пользователя
 * @author Altukhov Alexey
 * @version 1.0
 */
@Controller
public class HistoryController {

    /**Пользовательский сервис*/
    @Autowired
    private UserService userService;

    /**
     * Метод обработки get запросов по адресу "/history/add"
     * @return возвращает переадресацию на главную страницу
     */
    @GetMapping("/history/add")
    public String saveHistoryUser() {
        userService.saveHistory(userService.getCurrentUser().getId());
        return "redirect:/";
    }
}
