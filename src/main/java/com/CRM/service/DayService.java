package com.CRM.service;

import com.CRM.entity.Day;
import com.CRM.repository.DayRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class DayService {
    @Autowired
    private DayRepo dayRepo;

    @Transactional
    public List<Day> findAll() {
        return dayRepo.findAll();
    }

    public Day findById(int id) {
        return dayRepo.findById(id);
    }

    public Day save(Day day) {
        return dayRepo.save(day);
    }
}
