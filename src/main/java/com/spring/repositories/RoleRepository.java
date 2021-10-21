package com.spring.repositories;

import com.spring.entities.Role;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Репозиторий к таблице Role
 * @author Altukhov Alexey
 * @version 1.0
 */
public interface RoleRepository extends JpaRepository<Role, Long> {
}
