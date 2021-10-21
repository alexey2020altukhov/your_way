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
 * Класс сущности, соответствующий таблице Profile
 * @author Altukhov Alexey
 * @version 1.0
 */
@Data
@NoArgsConstructor
@Entity
public class Profile {

    /**Уникальный ключ профиля*/
    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2", strategy = "org.hibernate.id.UUIDGenerator")
    @Column(length=16)
    private UUID id;
    /**Уникальный ключ пользователя, которому принадлежит профиль*/
    @Column(length=16)
    private UUID idUser;
    /**Фамилия*/
    private String surname;
    /**Имя*/
    private String name;
    /**Отчество*/
    private String patronymic;
    /**Возраст*/
    private byte age;
    /**Название фото*/
    private String namePhoto;

    /**
     * Конструктор класса
     * @param idUser id пользователя
     * @param surname фамилия
     * @param name имя
     * @param patronymic отчество
     * @param age возраст
     * @param namePhoto название фото
     */
    public Profile(UUID idUser, String surname, String name, String patronymic, byte age, String namePhoto) {
        this.idUser = idUser;
        this.surname = surname;
        this.name = name;
        this.patronymic = patronymic;
        this.age = age;
        this.namePhoto = namePhoto;
    }
}
