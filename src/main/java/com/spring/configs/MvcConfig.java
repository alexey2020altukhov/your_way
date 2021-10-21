package com.spring.configs;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * Класс, использующийся для настройки конфигурации Spring MVC
 * @author Altukhov Alexey
 * @version 1.0
 */
@Configuration
public class MvcConfig implements WebMvcConfigurer {

    /**
     * Функция регистрации простых автоматизированных контроллеров
     * @param registry url адрес для данного контроллера
     */
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/login").setViewName("login");
    }
}
