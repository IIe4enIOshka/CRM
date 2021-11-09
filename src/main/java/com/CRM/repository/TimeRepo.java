package com.CRM.repository;

import com.CRM.entity.Time;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TimeRepo extends CrudRepository<Time, Long> {
    List<Time> findAll();

    Time findById(int id);

    Time save(Time day);

    @Query(
//            value = "SELECT DISTINCT times.id, times.time FROM times INNER JOIN times_days ON times.id = times_days.time_id INNER JOIN days ON times_days.day_id = days.id INNER JOIN days_students ON days.id = days_students.day_id INNER JOIN students ON days_students.student_id = students.id INNER JOIN teachers ON students.teacher_id = teachers.id INNER JOIN users ON users.id = teachers.user_id WHERE days.name = ? AND users.id = ? ORDER BY times.id  ASC",
            value = "SELECT DISTINCT times.id, times.time FROM times " +
                    "INNER JOIN " +
                    "times_days " +
                    "ON times.id = times_days.time_id " +
                    "INNER JOIN " +
                    "days " +
                    "ON times_days.day_id = days.id " +
                    "INNER JOIN " +
                    "days_students ON days.id = days_students.day_id " +
                    "INNER JOIN " +
                    "students ON days_students.student_id = students.id " +
                    "INNER JOIN " +
                    "teachers ON students.teacher_id = teachers.id " +
                    "INNER JOIN " +
                    "users ON users.id = teachers.user_id " +
                    "WHERE days.name = ? AND users.id = ? " +
                    "ORDER BY times.id ASC",
            nativeQuery = true
    )
    List<Time> findTimesTeaherNative(String day, int id);
}
