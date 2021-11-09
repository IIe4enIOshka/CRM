package com.CRM.repository;

import com.CRM.entity.Student.Student;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudentRepo extends CrudRepository<Student, Long> {

    List<Student> findAll();

    Student findById(int id);

    Student save(Student student);


    @Query(
            value = "SELECT * FROM students " +
                    "INNER JOIN " +
                    "groups_students " +
                    "ON students.id = groups_students.student_id " +
                    "INNER JOIN " +
                    "groups ON groups.id = groups_students.group_id " +
                    "WHERE groups.name = ?",
            nativeQuery = true
    )
    List<Student> findStudentGroupBranchNative(
            String group
    );

    @Query(
            value = "SELECT * FROM students " +
                    "INNER JOIN " +
                    "teachers " +
                    "ON students.teacher_id = teachers.id " +
                    "INNER JOIN " +
                    "users ON users.id = teachers.user_id " +
                    "WHERE users.id = ?",
            nativeQuery = true
    )
    List<Student> findStudentsTeaherNative(
            int id
    );

    @Query(
            value = "SELECT * FROM students " +
                    "INNER JOIN " +
                    "teachers " +
                    "ON students.teacher_id = teachers.id " +
                    "INNER JOIN " +
                    "users ON users.id = teachers.user_id " +
                    "INNER JOIN " +
                    "days_students ON days_students.student_id = students.id " +
                    "INNER JOIN " +
                    "days ON days_students.day_id = days.id " +
                    "INNER JOIN " +
                    "times_days ON times_days.day_id = days.id " +
                    "INNER JOIN " +
                    "times ON times_days.time_id = times.id " +
                    "WHERE users.id = ? AND times.id = ?",
            nativeQuery = true
    )
    List<Student> findStudentsTeaherTimeNative(
            int user_id, int time_id
    );

    @Query(
            value = "SELECT * FROM students WHERE surname = ? and name = ? and sex = ? and date_birday = ? and speciality = ? and course = ? and date_receipt = ?",
            nativeQuery = true
    )
    Student findStudentNative(
            String surname,
            String name,
            String sex,
            String date_birday,
            String speciality,
            int course,
            String date_receipt
    );
}