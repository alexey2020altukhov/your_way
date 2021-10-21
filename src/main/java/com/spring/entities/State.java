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
 * Класс сущности, соответствующий таблице State
 * @author Altukhov Alexey
 * @version 1.0
 */
@Data
@NoArgsConstructor
@Entity
public class State {

    /**Уникальный ключ национальности*/
    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2", strategy = "org.hibernate.id.UUIDGenerator")
    @Column(length=16)
    private UUID id;
    /**Название страны*/
    private String name;
    /**Приоритет*/
    private int priority;

    /**
     * Конструктор класса
     * @param name названия государства
     * @param priority приоритет государства
     */
    public State(String name, int priority) {
        this.name = name;
        this.priority = priority;
    }
}
