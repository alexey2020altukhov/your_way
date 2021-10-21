package com.spring.controllers;

import com.spring.service.ImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import java.io.*;

/**
 * Класс-контроллер, обрабатывающий запросы на получение изображений
 * @author Altukhov Alexey
 * @version 1.0
 */
@Controller
@RequestMapping("**/img")
public class ImageController {

    /**Сервис для работы с изображениями*/
    @Autowired
    private ImageService imageService;

    /**Путь хранения пользовательских изображений*/
    private String pathUserPhoto = "D:\\Политех 2021\\Web-ориентированное программирование\\Курсовая\\Проект 'Твой путь'\\src\\main\\storage\\user\\images\\";

    /**
     * Метод для запроса на получения пользовательского изображения из хранилища
     * @param namePhoto название фото
     * @return возвращает изображение в виде массива байтов
     * @throws IOException исключение, возникающее в случае отсутствия изображения по указанному пути или названию
     */
    @RequestMapping("/user={namePhoto}")
    public ResponseEntity<byte[]> getUserPhoto(@PathVariable(value = "namePhoto") String namePhoto) throws IOException {
        return imageService.getImageFromStorage(pathUserPhoto, namePhoto);
    }
}
