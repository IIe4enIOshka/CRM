package com.CRM.repository;

import com.CRM.entity.Day;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DayRepo extends CrudRepository<Day, Long> {
    List<Day> findAll();

    Day findById(int id);

    Day save(Day day);
}
