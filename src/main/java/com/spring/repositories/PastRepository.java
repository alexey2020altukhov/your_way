package com.spring.repositories;

import com.spring.entities.Past;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.UUID;

/**
 * Репозиторий к таблице Past
 * @author Altukhov Alexey
 * @version 1.0
 */
public interface PastRepository extends JpaRepository<Past, UUID> {
}
