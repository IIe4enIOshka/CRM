package com.CRM.entity.Student;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;

@Entity
@Table(name = "visits")
public class Visit {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne(optional = false, cascade = CascadeType.ALL)
    @JoinColumn(name = "student_id")
    @JsonBackReference
    private Student student;

    @Column(length = 26)
    private String date;

    @Column(length = 26)
    private String status;

    public Visit(){

    }

    public Visit(String date, String status, Student student){
        this.date = date;
        this.status = status;
        this.student = student;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
