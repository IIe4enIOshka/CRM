package com.CRM.service;

import com.CRM.entity.Student.Visit;
import com.CRM.repository.VisitRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class VisitService {
    @Autowired
    private VisitRepo visitRepo;

    @Transactional
    public List<Visit> findAll() {
        return visitRepo.findAll();
    }

    public Visit findById(int id) {
        return visitRepo.findById(id);
    }

    public Visit save(Visit attendance) {
        return visitRepo.save(attendance);
    }

    public List<Visit> findVisitsByStudentIdNative(int id){
        return visitRepo.findVisitByStudentIdNative(id);
    }
}
