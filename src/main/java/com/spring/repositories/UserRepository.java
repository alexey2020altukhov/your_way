package com.spring.repositories;

import com.spring.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.UUID;

/**
 * Репозиторий к таблице User
 * @author Altukhov Alexey
 * @version 1.0
 */
public interface UserRepository extends JpaRepository<User, UUID> {

    /**
     * Метод, который ищет пользователя по его логину
     * @param username логин пользователя
     * @return возвращает пользователя с указанным логином
     */
    User findByUsername(String username);
}
