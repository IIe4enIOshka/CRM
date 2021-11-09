package com.CRM.entity.Student;

import com.CRM.entity.Branch;
import com.CRM.entity.Day;
import com.CRM.entity.Group;
import com.CRM.entity.Teacher;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "students")
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(length = 26, nullable = false)
    private String surname;

    @Column(length = 26, nullable = false)
    private String name;

    @Column(length = 26)
    private String patronymic;

    @Column(length = 26, nullable = false)
    private String sex;

    @Column(length = 26, nullable = false)
    private String date_birday;

    @Column(length = 6, nullable = false)
    private int age;

    @Column(length = 26)
    private String phone;

    @Column(length = 26, nullable = false)
    private String speciality;

    @Column(length = 6, nullable = false)
    private int course;

    @Column(length = 26, nullable = false)
    private String date_receipt;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="parent_id")
    @JsonManagedReference
    private Parent parent;

    @OneToMany(mappedBy = "student", fetch = FetchType.LAZY)
    @JsonManagedReference
    private List<Payment> payments;

    @OneToMany(mappedBy = "student", fetch = FetchType.LAZY)
    @JsonManagedReference
    private List<Visit> visits;

//    @ManyToMany(mappedBy = "students")
//    @JsonBackReference
//    private Set<Group> groups = new HashSet<>();

    @ManyToMany(mappedBy = "students")
    @JsonManagedReference
    private Set<Branch> branches = new HashSet<>();

    @ManyToOne(optional = false, cascade = CascadeType.ALL)
    @JoinColumn(name = "teacher_id")
    private Teacher teacher;

    @ManyToMany(mappedBy = "students")
    @JsonManagedReference
    private Set<Day> days = new HashSet<>();


    public Student() {
    }

    public Student(String surname,
                   String name,
                   String patronymic,
                   String sex,
                   String date_birday,
                   int age,
                   String phone,
                   String speciality,
                   int course,
                   String date_receipt) {
        this.surname = surname;
        this.name = name;
        this.patronymic = patronymic;
        this.sex = sex;
        this.date_birday = date_birday;
        this.age = age;
        this.phone = phone;
        this.speciality = speciality;
        this.course = course;
        this.date_receipt = date_receipt;
//        this.groups = groups;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<Payment> getPayments() {
        return payments;
    }

    public void setPayments(List<Payment> payments) {
        this.payments = payments;
    }

    public int getCourse() {
        return course;
    }

    public void setCourse(int course) {
        this.course = course;
    }

    public String getSpeciality() {
        return speciality;
    }

    public void setSpeciality(String speciality) {
        this.speciality = speciality;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getPatronymic() {
        return patronymic;
    }

    public void setPatronymic(String patronymic) {
        this.patronymic = patronymic;
    }

    public String getDate_birday() {
        return date_birday;
    }

    public void setDate_birday(String date_birday) {
        this.date_birday = date_birday;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDate_receipt() {
        return date_receipt;
    }

    public void setDate_receipt(String date_receipt) {
        this.date_receipt = date_receipt;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public Parent getParent() {
        return parent;
    }

    public void setParent(Parent parent) {
        this.parent = parent;
    }

    public List<Visit> getVisits() {
        return visits;
    }

    public void setVisits(List<Visit> visits) {
        this.visits = visits;
    }

//    public Set<Group> getGroups() {
//        return groups;
//    }
//
//    public void setGroups(Set<Group> groups) {
//        this.groups = groups;
//    }

    public Set<Branch> getBranches() {
        return branches;
    }

    public void setBranches(Set<Branch> branches) {
        this.branches = branches;
    }

    public Set<Day> getDays() {
        return days;
    }

    public void setDays(Set<Day> days) {
        this.days = days;
    }

    public Teacher getTeacher() {
        return teacher;
    }

    public void setTeacher(Teacher teacher) {
        this.teacher = teacher;
    }
}
