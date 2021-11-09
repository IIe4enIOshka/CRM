package com.CRM.entity;

import com.CRM.entity.Student.Student;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import javax.persistence.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "branches")
public class Branch {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(length = 26, nullable = false)
    private String name;

//    @OneToMany(mappedBy = "branch", fetch = FetchType.LAZY)
////    @JsonManagedReference
//    @JsonIgnore
////    @JsonSerialize(using = CustomListSerializer.class)
//    public List<Group> groups;

    @ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinTable(
            name = "students_branches",
            joinColumns = {@JoinColumn(name = "branch_id")},
            inverseJoinColumns = {@JoinColumn(name = "student_id")}
    )
    @JsonBackReference
    private List<Student> students = new ArrayList<>();

    @ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinTable(
            name = "teachers_branches",
            joinColumns = {@JoinColumn(name = "teacher_id")},
            inverseJoinColumns = {@JoinColumn(name = "branch_id")}
    )
    @JsonManagedReference
    private Set<Teacher> teachers = new HashSet<>();

    public Branch() {
    }

    public Branch(String name) {
        this.name = name;
    }

    public Branch(String name, List<Student> students) {
        this.name = name;
        this.students = students;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Student> getStudents() {
        return students;
    }

    public void setStudents(List<Student> students) {
        this.students = students;
    }

//    public List<Group> getGroups() {
//        return groups;
//    }
//
//    public void setGroups(List<Group> groups) {
//        this.groups = groups;
//    }
}
