package com.CRM.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "times")
public class Time {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(length = 26)
    private String time;

    @ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinTable(
            name = "times_days",
            joinColumns = {@JoinColumn(name = "time_id")},
            inverseJoinColumns = {@JoinColumn(name = "day_id")}
    )
    @JsonBackReference
    private List<Day> days = new ArrayList<>();

//    @ManyToOne(optional = false, cascade = CascadeType.ALL)
//    @JoinColumn(name="day_id")
//    @JsonBackReference
//    private Day day;

    public Time() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public List<Day> getDays() {
        return days;
    }

    public void setDays(List<Day> days) {
        this.days = days;
    }
}