package com.CRM.service;

import com.CRM.entity.Student.Student;
import com.CRM.repository.StudentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class StudentService {
    @Autowired
    private StudentRepo studentRepo;

    @Transactional
    public List<Student> findAll() {
        return studentRepo.findAll();
    }

    public Student findById(int id) {
        return studentRepo.findById(id);
    }

    public Student save(Student student) {
        return studentRepo.save(student);
    }

    public List<Student> findStudentGroupBranchNative(String group) {
        return studentRepo.findStudentGroupBranchNative(group);
    }

    public List<Student> findStudentsTeaherNative(int id) {
        return studentRepo.findStudentsTeaherNative(id);
    }

    public List<Student> findStudentsTeaherTimeNative(int user_id, int time_id) {
        return studentRepo.findStudentsTeaherTimeNative(user_id, time_id);
    }

    public Student findStudentNative(String surname,
                                     String name,
                                     String sex,
                                     String date_birday,
                                     String speciality,
                                     int course,
                                     String date_receipt) {
        return studentRepo.findStudentNative(surname, name, sex, date_birday, speciality, course, date_receipt);
    }
}
