package com.spring.controllers;

import com.spring.entities.Profile;
import com.spring.entities.User;
import com.spring.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/**
 * Класс-контроллер, обрабатывающий запросы на главной странице сайта
 * @author Altukhov Alexey
 * @version 1.0
 */
@Controller
public class MainController {

    /**Пользовательский сервис*/
    @Autowired
    private UserService userService;

    /**
     * Метод обработки get запросов на главной странице
     * @param model модель данных
     * @return возвращает переадресацию на "/registration/profile/error/{idUser}" или jsp страницу index
     */
    @GetMapping ("/")
    public String main(Model model) {
        User user = userService.getCurrentUser();
        if (user!=null) {
            UUID idUser = user.getId();
            Profile profile = userService.getProfileByIdUser(idUser);
            if (profile==null) {
                SecurityContextHolder.clearContext();
                return "redirect:/registration/profile/error/"+idUser;
            }
            model.addAttribute("profile", profile);
            Date date = userService.getDateVisitCurrentUser();
            SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
            model.addAttribute("dateVisitUser", dateFormat.format(date));
            model.addAttribute("countVisitUser", userService.getCountVisitsCurrentUser());
        }
        return "index";
    }
}
