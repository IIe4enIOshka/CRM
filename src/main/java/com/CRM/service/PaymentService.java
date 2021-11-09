package com.CRM.service;

import com.CRM.entity.Student.Payment;
import com.CRM.repository.PaymentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class PaymentService {
    @Autowired
    private PaymentRepo paymentRepo;

    @Transactional
    public List<Payment> findAll() {
        return paymentRepo.findAll();
    }

    public Payment findById(int id) {
        return paymentRepo.findById(id);
    }

    public Payment save(Payment payment) {
        return paymentRepo.save(payment);
    }

    public List<Payment> findPaymentsByStudentIdNative(int id){
        return paymentRepo.findPaymentsByStudentIdNative(id);
    }
}
