package com.spring.entities;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import javax.persistence.*;
import java.util.Collection;
import java.util.Set;
import java.util.UUID;

/**
 * Класс сущности, соотвествующий таблице User
 * @author Altukhov Alexey
 * @version 1.0
 */
@Data
@NoArgsConstructor
@Entity
public class User implements UserDetails {

    /**Уникальный ключ пользователя*/
    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2", strategy = "org.hibernate.id.UUIDGenerator")
    @Column(length=16)
    private UUID id;
    /**Логин пользователя*/
    private String username;
    /**Пароль пользователя*/
    private String password;
    /**Поле для повтора пароля*/
    @Transient
    private String passwordConfirm;
    /**Список всех ролей*/
    @ManyToMany(fetch = FetchType.EAGER)
    private Set<Role> roles;

    /**
     * Метод получения имени пользователя
     * @return возвращает логин, используемый для аутентификации пользователя
     */
    @Override
    public String getUsername() {
        return username;
    }

    /**
     * Метод, указывающий истёк ли срок действия учётной записи пользователя
     * @return возвращает true
     */
    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    /**
     * Метод, указывающий заблокирован пользователь или нет
     * @return возвращает true
     */
    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    /**
     * Метод, указывающий истёк ли срок действия учётных данных пользователя (пароля)
     * @return возвращает true
     */
    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    /**
     * Метод, указывающий включен или отключен пользователь
     * @return возвращает true
     */
    @Override
    public boolean isEnabled() {
        return true;
    }

    /**
     * Метод, возвращающий полномочия, предоставленные пользователю
     * @return возвращает коллекцию ролей пользователя
     */
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return getRoles();
    }

    /**
     * Метод, возвращающий пароль, используемый для аутентификации пользователя
     * @return возвращает пароль
     */
    @Override
    public String getPassword() {
        return password;
    }
}
