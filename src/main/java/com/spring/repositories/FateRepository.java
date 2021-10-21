package com.spring.repositories;

import com.spring.entities.Fate;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.UUID;

/**
 * Репозиторий к таблице Fate
 * @author Altukhov Alexey
 * @version 1.0
 */
public interface FateRepository extends JpaRepository<Fate, UUID> {
}
