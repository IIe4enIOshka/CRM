package com.CRM.controller;

import com.CRM.RequestData;
import com.CRM.entity.Student.Student;
import com.CRM.entity.Student.Visit;
import com.CRM.service.StudentService;
import com.CRM.service.VisitService;
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
import java.util.Map;

@RestController
public class VisitController {
    @Autowired
    private VisitService visitService;
    @Autowired
    private StudentService studentService;

    @RequestMapping(value = "/get_visits_by_id", method = RequestMethod.POST)
    @ResponseBody
    public String getBranches(HttpServletRequest request) throws ServletException, IOException, JsonGenerationException, JsonMappingException {

        Map result = RequestData.getData(request);

        int id = Integer.parseInt((String) result.get("id"));

        List<Visit> attendances = visitService.findVisitsByStudentIdNative(id);

        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(attendances);
    }

    @RequestMapping(value = "/add_visit", method = RequestMethod.POST)
    @ResponseBody
    public String addBranch(HttpServletRequest request) throws ServletException, IOException {
        //получить данные из запроса
        Map result = RequestData.getData(request);
        // данные из Map записываем в переменные

        String date = (String) result.get("date_visit");
        String status = (String) result.get("status");

        int student_id = Integer.parseInt((String) result.get("student_id"));

        Student student = studentService.findById(student_id);

        visitService.save(new Visit(date, status, student));
        return "{\"status\":\"success\",\"message\":\"success\"}";
    }
}
