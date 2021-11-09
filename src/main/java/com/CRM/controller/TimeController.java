package com.CRM.controller;

import com.CRM.RequestData;
import com.CRM.entity.Time;
import com.CRM.service.TimeService;
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
public class TimeController {
    @Autowired
    private TimeService timeService;

    @RequestMapping(value = "/get_times", method = RequestMethod.GET)
    @ResponseBody
    public String getTimes(HttpServletRequest request) throws ServletException, IOException, JsonGenerationException, JsonMappingException {
        List<Time> branches = timeService.findAll();

        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(branches);
    }

    @RequestMapping(value = "/get_times_teacher", method = RequestMethod.POST)
    @ResponseBody
    public String getTimesTeacher(HttpServletRequest request) throws ServletException, IOException, JsonGenerationException, JsonMappingException {

        Map result = RequestData.getData(request);
        int id = (int) Double.parseDouble (result.get("id").toString());
        String day = (String) result.get("day");

        List<Time> times = timeService.findTimesTeaherNative(day, id);

        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(times);
    }
}
