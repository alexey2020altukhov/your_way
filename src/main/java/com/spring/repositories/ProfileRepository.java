package com.spring.repositories;

import com.spring.entities.Profile;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.UUID;

/**
 * Репозиторий к таблице Profile
 * @author Altukhov Alexey
 * @version 1.0
 */
public interface ProfileRepository extends JpaRepository<Profile, UUID> {

    /**
     * Метод для поиска профиля по id пользователя
     * @param idUser id пользователя
     * @return возвращает профиль пользователя с указанным id
     */
    Profile findProfileByIdUser(UUID idUser);
}
