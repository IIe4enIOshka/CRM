package com.CRM.repository;

import com.CRM.entity.Teacher;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TeacherRepo extends CrudRepository<Teacher, Long> {
    List<Teacher> findAll();

    Teacher findById(int id);

    Teacher save(Teacher teacher);

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
    List<Teacher> findTeacherUserIdNative(
            int user_id
    );
}
