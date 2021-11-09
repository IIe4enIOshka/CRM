package com.CRM.entity.Student;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;

@Entity
@Table(name = "payments")
public class Payment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(length = 26, nullable = false)
    private int number;
    @Column(length = 26, nullable = false)
    private String date_pay;
    @Column(length = 26, nullable = false)
    private int amount;
    @Column(length = 26, nullable = false)
    private String reason;
    @Column(length = 255, nullable = false)
    private String remark;

    @ManyToOne(optional = false, cascade = CascadeType.ALL)
    @JoinColumn(name = "student_id")
    @JsonBackReference
    private Student student;

    public Payment() {
    }

    public Payment(int number, String date_pay, int amount, String reason, String remark) {
        this.number = number;
        this.date_pay = date_pay;
        this.amount = amount;
        this.reason = reason;
        this.remark = remark;
    }

    public Payment(int number, String date_pay, int amount, String reason, String remark, Student student) {
        this.number = number;
        this.date_pay = date_pay;
        this.amount = amount;
        this.reason = reason;
        this.remark = remark;
        this.student = student;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getDate_pay() {
        return date_pay;
    }

    public void setDate_pay(String date_pay) {
        this.date_pay = date_pay;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }
}
