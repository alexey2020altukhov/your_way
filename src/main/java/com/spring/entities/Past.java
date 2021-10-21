package com.spring.entities;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.UUID;

/**
 * Класс сущности, соответствующий таблице Past
 * @author Altukhov Alexey
 * @version 1.0
 */
@Data
@NoArgsConstructor
@Entity
public class Past {

    /**Уникальный ключ прошлого*/
    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2", strategy = "org.hibernate.id.UUIDGenerator")
    @Column(length=16)
    private UUID id;
    /**Текст про прошлое человека*/
    @Column(length = 1000)
    private String text;
    /**Название фото*/
    private String namePhoto;

    /**
     * Конструктор класса
     * @param text текст про прошлое
     * @param namePhoto название фото
     */
    public Past(String text, String namePhoto) {
        this.text = text;
        this.namePhoto = namePhoto;
    }
}
