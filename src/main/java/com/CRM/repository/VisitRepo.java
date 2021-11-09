package com.CRM.repository;

import com.CRM.entity.Student.Visit;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface VisitRepo extends CrudRepository<Visit, Long> {
    List<Visit> findAll();

    Visit findById(int id);

    Visit save(Visit attendance);

    @Query(
            value = "SELECT * FROM payments WHERE student_id = ?",
            nativeQuery = true
    )
    List<Visit> findVisitByStudentIdNative(int id);
}
