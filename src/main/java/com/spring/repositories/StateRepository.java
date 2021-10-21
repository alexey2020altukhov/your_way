package com.spring.repositories;

import com.spring.entities.State;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;
import java.util.UUID;

/**
 * Репозиторий к таблице State
 * @author Altukhov Alexey
 * @version 1.0
 */
public interface StateRepository extends JpaRepository<State, UUID> {

    /**
     * Метод получения списка государств по их приоритету
     * @param priority приоритет
     * @return возвращает список государств с указанным приоритетом
     */
    List<State> findAllByPriority(int priority);
}
