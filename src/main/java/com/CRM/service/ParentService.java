package com.CRM.service;

import com.CRM.entity.Student.Parent;
import com.CRM.repository.BranchRepo;
import com.CRM.repository.ParentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class ParentService {
    @Autowired
    private ParentRepo parentRepo;

    @Transactional
    public List<Parent> findAll() {
        return parentRepo.findAll();
    }

    public Parent findById(int id) {
        return parentRepo.findById(id);
    }

    public Parent save(Parent parent) {
        return parentRepo.save(parent);
    }
}