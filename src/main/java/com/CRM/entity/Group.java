package com.CRM.entity;

import com.CRM.entity.Student.Student;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

//@Entity
//@Table(name = "groups")
public class Group {
//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    private int id;
//
//    @Column(length = 26, nullable = false)
//    private String name;
//
//    @ManyToOne(optional = false, cascade = CascadeType.ALL)
//    @JoinColumn(name = "teacher_id")
//    private Teacher teacher;
//
//    @ManyToOne(optional = false, cascade = CascadeType.ALL)
//    @JoinColumn(name = "branch_id")
//    private Branch branch;
//
//    @ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
//    @JoinTable(
//            name = "groups_students",
//            joinColumns = {@JoinColumn(name = "group_id")},
//            inverseJoinColumns = {@JoinColumn(name = "student_id")}
//    )
//    @JsonManagedReference
//    private Set<Student> students = new HashSet<>();
//
//    @ManyToMany(mappedBy = "groups")
//    @JsonManagedReference
//    private Set<Day> days = new HashSet<>();
//
//    public Group() {
//
//    }
//
//    public Group(String name, Teacher teacher, Branch branch, Set<Day> days) {
//        this.name = name;
//        this.branch = branch;
//        this.teacher = teacher;
//        this.days = days;
//    }
//
//    public Group(String name, Branch branch) {
//        this.name = name;
//        this.branch = branch;
//    }
//
//    public Group(String name, Teacher teacher, Branch branch) {
//        this.name = name;
//        this.branch = branch;
//        this.teacher = teacher;
//    }
//
//    public int getId() {
//        return id;
//    }
//
//    public void setId(int id) {
//        this.id = id;
//    }
//
//    public String getName() {
//        return name;
//    }
//
//    public void setName(String name) {
//        this.name = name;
//    }
//
//    public Teacher getTeacher() {
//        return teacher;
//    }
//
//    public void setTeacher(Teacher teacher) {
//        this.teacher = teacher;
//    }
//
//    public Branch getBranch() {
//        return branch;
//    }
//
//    public void setBranch(Branch branch) {
//        this.branch = branch;
//    }
//
//    public Set<Student> getStudents() {
//        return students;
//    }
//
//    public void setStudents(Set<Student> students) {
//        this.students = students;
//    }
//
//    public Set<Day> getDays() {
//        return days;
//    }
//
//    public void setDays(Set<Day> days) {
//        this.days = days;
//    }
}
