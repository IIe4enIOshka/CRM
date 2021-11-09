//package com.CRM.controller;
//
//import com.CRM.RequestData;
//import com.CRM.entity.*;
//import com.CRM.service.*;
//import com.fasterxml.jackson.core.JsonGenerationException;
//import com.fasterxml.jackson.databind.JsonMappingException;
//import com.fasterxml.jackson.databind.ObjectMapper;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.bind.annotation.RestController;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServletRequest;
//import java.io.IOException;
//import java.util.*;
//
////@RestController
//public class GroupController {
////    private final GroupService groupService;
////    private final BranchService branchService;
////    private final TeacherService teacherService;
////    private final DayService dayService;
////    private final TimeService timeService;
////
////    @Autowired
////    public GroupController(GroupService groupService, BranchService branchService, TeacherService teacherService, DayService dayService, TimeService timeService) {
////        this.groupService = groupService;
////        this.branchService = branchService;
////        this.teacherService = teacherService;
////        this.dayService = dayService;
////        this.timeService = timeService;
////
////    }
//
////    @RequestMapping(value = "/add_group", method = RequestMethod.POST)
////    @ResponseBody
////    public String addBranch(HttpServletRequest request) throws ServletException, IOException {
////        Map result = RequestData.getData(request);
////
////        String name = (String) result.get("name");
////        int branch_id = Integer.parseInt((String) result.get("branch_id"));
////        int teacher_id = Integer.parseInt((String) result.get("teacher_id"));
////
////        List<String> days_array = (ArrayList<String>) result.get("days");
////        List<String> times_array = (ArrayList<String>) result.get("times");
////
////        List<Group> groups = groupService.findAll();
////
//////        for (Group item : groups) {
//////            if (item.getName().equals(name)) {
//////                return "{\"status\":\"error\",\"message\":\"Такая группа уже есть\"}";
//////            }
//////        }
////
////        Branch branch = branchService.findById(branch_id);
////        Teacher teacher = teacherService.findById(teacher_id);
////
////        Set<Day> days = new HashSet<>();
////        List<Day> daysList = new ArrayList<>();
////        List<Time> times = new ArrayList<>();
////
//////        for (String item : times_array) {
//////            times.add(timeService.findById(Integer.parseInt(item)));
//////        }
////
//////        for (String item : days_array) {
//////            days.add(dayService.findById(Integer.parseInt(item)));
//////            daysList.add(dayService.findById(Integer.parseInt(item)));
//////        }
//////
//////        int i = 0;
//////
//////        for (Day item : days) {
//////            item.getTimes().add(times.get(i));
//////            i++;
//////        }
//////
//////        i = 0;
//////
//////        for (Time item : times) {
//////            item.getDays().add(daysList.get(i));
//////            i++;
//////        }
////
//////        Group group = new Group(name, teacher, branch, days);
//////
//////        for (Day item : days) {
//////            item.getGroups().add(group);
//////        }
////
//////        groupService.save(group);
////
////        return "{\"status\":\"success\",\"message\":\"success\"}";
////    }
//
////    @RequestMapping(value = "/get_groups", method = RequestMethod.GET)
////    @ResponseBody
////    public String getGroups(HttpServletRequest request) throws ServletException, IOException, JsonGenerationException, JsonMappingException {
////        List<Group> groups = groupService.findAll();
////
////        ObjectMapper mapper = new ObjectMapper();
////
////        return mapper.writeValueAsString(groups);
////    }
//
////    @RequestMapping(value = "/get_groups_branch", method = RequestMethod.POST)
////    @ResponseBody
////    public String getGroupsBranch(HttpServletRequest request) throws ServletException, IOException, JsonGenerationException, JsonMappingException {
////        Map result = RequestData.getData(request);
////
////        String branch = (String) result.get("branch");
////
////        List<Group> groups = groupService.findGroupBranchNative(branch);
////
////        ObjectMapper mapper = new ObjectMapper();
////
////        return mapper.writeValueAsString(groups);
////    }
//
////    @RequestMapping(value = "/get_groups_student_id", method = RequestMethod.POST)
////    @ResponseBody
////    public String getGroupsStudentId(HttpServletRequest request) throws ServletException, IOException, JsonGenerationException, JsonMappingException {
////        Map result = RequestData.getData(request);
////
////        int id = Integer.parseInt((String) result.get("id"));
////
////        List<Group> groups = groupService.findGroupStudentIdNative(id);
////
////        ObjectMapper mapper = new ObjectMapper();
////
////        return mapper.writeValueAsString(groups);
////    }
//}
