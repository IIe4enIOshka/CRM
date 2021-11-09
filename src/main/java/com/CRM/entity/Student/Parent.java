package com.CRM.entity.Student;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;

@Entity
@Table(name = "parents")
public class Parent {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(length = 26, nullable = false)
    private String name;

    @Column(length = 26)
    private String phone;

    @OneToOne(mappedBy = "parent")
    @JsonBackReference
    private Student student;

    public Parent(){

    }

    public Parent(String name, String phone, Student student){
        this.name = name;
        this.phone = phone;
        this.student = student;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }
}
