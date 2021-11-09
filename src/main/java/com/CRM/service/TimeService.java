package com.CRM.service;

import com.CRM.entity.Time;
import com.CRM.repository.TimeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class TimeService {
    @Autowired
    private TimeRepo timeRepo;

    @Transactional
    public List<Time> findAll() {
        return timeRepo.findAll();
    }

    public Time findById(int id) {
        return timeRepo.findById(id);
    }

    public Time save(Time time) {
        return timeRepo.save(time);
    }

    public List<Time> findTimesTeaherNative(String day, int id) {
        return timeRepo.findTimesTeaherNative(day, id);
    }
}
