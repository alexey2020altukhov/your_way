package com.spring.entities;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import javax.persistence.*;
import java.util.Set;

/**
 * Класс сущности, соотвествующий таблице Role
 * @author Altukhov Alexey
 * @version 1.0
 */
@Data
@NoArgsConstructor
@Entity
public class Role implements GrantedAuthority {

    /**Уникальный ключ роли*/
    @Id
    private Long id;
    /**Название роли*/
    private String name;
    /**Список пользователей с их ролями*/
    @Transient
    @ManyToMany(mappedBy = "roles")
    private Set<User> users;

    /**
     * Конструктор класса, инициализирующий поле с id роли
     * @param id id роли
     */
    public Role(Long id) {
        this.id = id;
    }

    /**
     * Конструктор класса, инициализирующий поля с названием роли и её id
     * @param id id роли
     * @param name название роли
     */
    public Role(Long id, String name) {
        this.id = id;
        this.name = name;
    }

    /**
     * Метод, получающий полномочия пользователя
     * @return возвращает полномочия, предоставленные пользователю
     */
    @Override
    public String getAuthority() {
        return getName();
    }
}

