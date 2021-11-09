package com.CRM.service;

import com.CRM.entity.Teacher;
import com.CRM.repository.TeacherRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.transaction.Transactional;
import java.util.List;

@Service
public class TeacherService {
    @Autowired
    private TeacherRepo teacherRepo;

    @Transactional
    public List<Teacher> findAll() {
        return teacherRepo.findAll();
    }

    public Teacher findById(int id) {
        return teacherRepo.findById(id);
    }

    public Teacher save(Teacher teacher) {
        return teacherRepo.save(teacher);
    }
}
