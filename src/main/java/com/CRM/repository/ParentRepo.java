package com.CRM.repository;

import com.CRM.entity.Student.Parent;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ParentRepo extends CrudRepository<Parent, Long> {
    List<Parent> findAll();

    Parent findById(int id);

    Parent save(Parent parent);
}
