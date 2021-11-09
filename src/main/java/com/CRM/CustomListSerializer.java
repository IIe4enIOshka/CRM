package com.CRM;

import com.CRM.entity.Group;
import com.CRM.entity.Student.Student;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class CustomListSerializer extends StdSerializer<List<Group>> {

    public CustomListSerializer() {
        super(List.class, true);
    }

    @Override
    public void serialize(
            List<Group> items,
            JsonGenerator generator,
            SerializerProvider provider)
            throws IOException, JsonProcessingException {

        List<Integer> ids = new ArrayList<>();

//        List<Student> students = new ArrayList<>();
//
//        for (Student item : items) {
//            Student stud = new Student();
//
//            stud.setId(item.getId());
//            stud.setAge(item.getAge());
//            stud.setCourse(item.getCourse());
//            stud.setDate_birday(item.getDate_birday());
//            stud.setDate_receipt(item.getDate_receipt());
//            stud.setName(item.getName());
//            stud.setPatronymic(item.getPatronymic());
//            stud.setPhone(item.getPhone());
//            stud.setSex(item.getSex());
//            stud.setSpeciality(item.getSpeciality());
//            stud.setSurname(item.getSurname());
//            stud.setPayments(item.getPayments());
//
//            students.add(stud);
//        }
//
//        generator.writeObject(students);

//        for (Group item : items) {
//            ids.add(item.getId());
//        }
//
//        generator.writeObject(ids);
    }
}