package com.CRM.repository;

import com.CRM.entity.System.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepo extends JpaRepository<Role, Long> {
    Role getAllById(Long id);
}
