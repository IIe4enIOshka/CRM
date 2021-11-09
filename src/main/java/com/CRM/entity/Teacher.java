package com.CRM.entity;

import com.CRM.entity.Student.Student;
import com.CRM.entity.System.User;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "teachers")
public class Teacher {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
//    @Column (length = 26, nullable = false)
//    private String name;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="user_id")
    @JsonManagedReference
    private User user;

    @OneToMany(mappedBy = "teacher", fetch = FetchType.LAZY)
//    @JsonManagedReference
    @JsonIgnore
    private List<Student> students;

    @ManyToMany(mappedBy = "teachers")
    @JsonBackReference
    private Set<Branch> branches = new HashSet<>();

    public Teacher() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Student> getStudents() {
        return students;
    }

    public void setStudents(List<Student> students) {
        this.students = students;
    }

    public Set<Branch> getBranches() {
        return branches;
    }

    public void setBranches(Set<Branch> branches) {
        this.branches = branches;
    }

//    public List<Group> getGroups() {
//        return groups;
//    }
//
//    public void setGroups(List<Group> groups) {
//        this.groups = groups;
//    }

//    public String getName() {
//        return name;
//    }

//    public void setName(String name) {
//        this.name = name;
//    }
}
