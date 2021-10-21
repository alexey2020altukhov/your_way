package com.spring.repositories;

import com.spring.entities.History;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.UUID;

/**
 * Репозиторий к таблице History
 * @author Altukhov Alexey
 * @version 1.0
 */
public interface HistoryRepository extends JpaRepository<History, UUID> {

    /**
     * Метод получения самой свежей записи о посещении сайта
     * @param userId id пользователя
     * @return возвращает последнюю запись о входе пользователя
     */
    History findFirstByIdUserOrderByDateDesc(UUID userId);

    /**
     * Метод получения количества посещений сайта пользователем
     * @param userId id пользователя
     * @return возвращает количество посещений
     */
    Long countByIdUser(UUID userId);
}
