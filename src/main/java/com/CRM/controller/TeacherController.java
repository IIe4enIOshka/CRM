package com.CRM.controller;

import com.CRM.entity.Teacher;
import com.CRM.service.BranchService;
import com.CRM.service.GroupService;
import com.CRM.service.TeacherService;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

@RestController
public class TeacherController {
    @Autowired
    private TeacherService teacherService;

    @RequestMapping(value = "/get_teachers", method = RequestMethod.GET)
    @ResponseBody
    public String getTeachers(HttpServletRequest request) throws ServletException, IOException, JsonGenerationException, JsonMappingException {
        List<Teacher> teachers = teacherService.findAll();

        ObjectMapper mapper = new ObjectMapper();

//        System.out.println(mapper.writeValueAsString(teachers));

        return mapper.writeValueAsString(teachers);
    }
}
