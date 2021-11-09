package com.CRM.repository;

import com.CRM.entity.Student.Payment;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface PaymentRepo extends CrudRepository<Payment, Long> {
    List<Payment> findAll();

    Payment findById(int id);

    Payment save(Payment payment);

    @Query(
            value = "SELECT * FROM payments WHERE student_id = ?",
            nativeQuery = true
    )
    List<Payment> findPaymentsByStudentIdNative(int id);
}
