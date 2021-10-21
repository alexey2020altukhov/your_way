package com.spring.service;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import java.io.*;

/**
 * Класс, представляющий собой сервис для работы с изображениями
 * @author Altukhov Alexey
 * @version 1.0
 */
@Service
public class ImageService {

    /**
     * Метод получения изображения из хранилища по указанной директории
     * @param pathPhoto путь к изображению
     * @param namePhoto название изображения
     * @return возвращает изображение из хранилища в виде массива байтов
     * @throws IOException исключение, возникающее в случае отсутствия изображения по указанному пути или названию
     */
    public ResponseEntity<byte[]> getImageFromStorage(String pathPhoto, String namePhoto) throws IOException {
        String fullPathUserPhoto = pathPhoto+namePhoto;
        String format = (fullPathUserPhoto).split("\\.")[1];

        ByteArrayOutputStream out = null;
        InputStream input = null;
        try{
            out = new ByteArrayOutputStream();
            input = new BufferedInputStream(new FileInputStream(fullPathUserPhoto));
            int data = 0;
            while ((data = input.read()) != -1){
                out.write(data);
            }
        }
        finally{
            if (null != input){
                input.close();
            }
            if (null != out){
                out.close();
            }
        }
        byte[] bytes = out.toByteArray();

        final HttpHeaders headers = new HttpHeaders();
        if (format.equals("png"))
            headers.setContentType(MediaType.IMAGE_PNG);
        if (format.equals("jpg"))
            headers.setContentType(MediaType.IMAGE_JPEG);
        return new ResponseEntity<byte[]>(bytes, headers, HttpStatus.CREATED);
    }
}
