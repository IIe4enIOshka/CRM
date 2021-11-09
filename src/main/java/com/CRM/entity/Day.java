package com.CRM.entity;

import com.CRM.entity.Student.Student;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "days")
public class Day {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(length = 26)
    private String name;

//    @ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
//    @JoinTable(
//            name = "days_groups",
//            joinColumns = {@JoinColumn(name = "day_id")},
//            inverseJoinColumns = {@JoinColumn(name = "group_id")}
//    )
//    @JsonBackReference
//    private List<Group> groups = new ArrayList<>();

    @ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinTable(
            name = "days_students",
            joinColumns = {@JoinColumn(name = "day_id")},
            inverseJoinColumns = {@JoinColumn(name = "student_id")}
    )
    @JsonBackReference
    private List<Student> students = new ArrayList<>();

    @ManyToMany(mappedBy = "days")
    @JsonManagedReference
    private Set<Time> times = new HashSet<>();

//    @OneToMany(mappedBy = "day", fetch = FetchType.LAZY)
//    @JsonManagedReference
//    private Time time;

    public Day() {

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

//    public List<Group> getGroups() {
//        return groups;
//    }
//
//    public void setGroups(List<Group> groups) {
//        this.groups = groups;
//    }

    public Set<Time> getTimes() {
        return times;
    }

    public void setTimes(Set<Time> times) {
        this.times = times;
    }

    public List<Student> getStudents() {
        return students;
    }

    public void setStudents(List<Student> students) {
        this.students = students;
    }
}