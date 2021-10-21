package com.spring.entities;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.*;
import java.util.Date;
import java.util.UUID;

/**
 * Класс сущности, соответствующий таблице History
 * @author Altukhov Alexey
 * @version 1.0
 */
@Data
@NoArgsConstructor
@Entity
public class History {

    /**Уникальный ключ истории*/
    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2", strategy = "org.hibernate.id.UUIDGenerator")
    @Column(length=16)
    private UUID id;
    /**Уникальный ключ вошедшего пользователя*/
    @Column(length=16)
    private UUID idUser;
    /**Дата захода пользователя*/
    @Temporal(TemporalType.TIMESTAMP)
    private Date date;

    /**
     * Конструктор класса, инициализирующий поля с датой входа пользователя и его id
     * @param idUser id пользователя
     * @param date дата входа
     */
    public History(UUID idUser, Date date) {
        this.idUser = idUser;
        this.date = date;
    }
}
