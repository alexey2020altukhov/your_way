package com.file;

import org.springframework.web.multipart.MultipartFile;
import java.io.File;
import java.io.IOException;

/**
 * Класс, использующийся для сохранения файлов
 * @author Altukhov Alexey
 * @version 1.0
 */
public class SavingFiles {

    /**
     * Метод сохранения файла по указанной директории
     * @param file файл, который требуется сохранить
     * @param directoryFile директория, куда необходимо сохранить файл
     * @param nameFile название файла
     * @return возвращает true в случае успешного сохранения, иначе - false
     */
    public static boolean put(MultipartFile file, String directoryFile, String nameFile) {
        if (file.isEmpty())
            return false;
        File uploadDir = new File(directoryFile);
        if (!uploadDir.exists())
            uploadDir.mkdir();
        uploadDir = new File(directoryFile + nameFile);
        try{
            file.transferTo(uploadDir);
            return true;
        }
        catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }
}
