package com.CRM.controller;

import com.CRM.AgeCalculator;
import com.CRM.DateNow;
import com.CRM.RequestData;
import com.CRM.entity.Branch;
import com.CRM.entity.Day;
import com.CRM.entity.Student.Parent;
import com.CRM.entity.Student.Student;
import com.CRM.entity.System.User;
import com.CRM.entity.Teacher;
import com.CRM.entity.Time;
import com.CRM.service.*;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.internal.LinkedTreeMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.InputStream;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;

@RestController
public class StudentController {
    @Autowired
    private StudentService studentService;
//    @Autowired
//    private GroupService groupService;
    @Autowired
    private ParentService parentService;
    @Autowired
    private UserService userService;

    @Autowired
    private DayService dayService;
    @Autowired
    private TimeService timeService;
    @Autowired
    private BranchService branchService;
    @Autowired
    private TeacherService teacherService;

    @RequestMapping(value = "/add_student", method = RequestMethod.POST)
    @ResponseBody
    public String addBranch(HttpServletRequest request) throws ServletException, IOException {
        //получить данные из запроса
        Map result = RequestData.getData(request);
        // данные из Map записываем в переменные

        String surname = (String) result.get("surname");
        String name = (String) result.get("name");
        String patronymic = (String) result.get("patronymic");
        String sex = (String) result.get("sex");
        String date_birday = (String) result.get("date_birday");
        String phone = (String) result.get("phone");
        String speciality = (String) result.get("speciality");
        int course = Integer.parseInt((String) result.get("course"));
        String date_receipt = (String) result.get("date_receipt");

        int teacher_id = Integer.parseInt((String) result.get("teacher_id"));

//        List<String> groups_array = (ArrayList<String>) result.get("groups");

        String name_parent = (String) result.get("name_parent");
        String phone_parent = (String) result.get("phone_parent");

        List<String> days_array = (ArrayList<String>) result.get("days");
        List<String> times_array = (ArrayList<String>) result.get("times");
        List<String> branches_array = (ArrayList<String>) result.get("branches");

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate localDateBirday = LocalDate.parse(date_birday);
        LocalDate localDateCurrentDate = LocalDate.parse(DateNow.getDate());
        int age = AgeCalculator.calculateAge(localDateBirday, localDateCurrentDate);

        Student student = studentService.findStudentNative(surname, name, sex, date_birday, speciality, course, date_receipt);

        if (student != null) {
            return "{\"status\":\"error\",\"message\":\"Такой студент уже есть\"}";
        }

//        Set<Group> groups = new HashSet<>();
//        for (String item : groups_array) {
//            groups.add(groupService.findById(Integer.parseInt(item)));
//        }

        //создали студента
        student = new Student(surname, name, patronymic, sex, date_birday, age, phone, speciality, course, date_receipt);

        Set<Day> days = new HashSet<>();
        List<Day> daysList = new ArrayList<>();
        List<Time> times = new ArrayList<>();
        Set<Branch> branches = new HashSet<>();

        Teacher teacher = teacherService.findById(teacher_id);

        //свяываем дни и время студента
        bindingTimeDay(times_array, times, days_array, days, daysList);
        //связали студента с филиалом
        bindingStudentBranch(branches_array, branches, student);
        //связали студента с днями
        bindingDayStudent(days, student);

        //связали с родителем
        Parent parent = new Parent(name_parent, phone_parent, student);
        student.setParent(parent);
        //связали с учителем
        student.setTeacher(teacher);

        //сохранили все
        studentService.save(student);
        parentService.save(parent);
        return "{\"status\":\"success\",\"message\":\"success\"}";
    }

    private void bindingDayStudent(Set<Day> days, Student student){
        student.setDays(days);

        for (Day item : days) {
            item.getStudents().add(student);
        }
    }

    private void bindingTimeDay(List<String> times_array, List<Time> times, List<String> days_array, Set<Day> days, List<Day> daysList) {
        for (String item : times_array) {
            times.add(timeService.findById(Integer.parseInt(item)));
        }

        for (String item : days_array) {
            days.add(dayService.findById(Integer.parseInt(item)));
            daysList.add(dayService.findById(Integer.parseInt(item)));
        }

        int i = 0;

        for (Day item : days) {
            item.getTimes().add(times.get(i));
            i++;
        }

        i = 0;

        for (Time item : times) {
            item.getDays().add(daysList.get(i));
            i++;
        }
    }

    private void bindingStudentBranch(List<String> branches_array, Set<Branch> branches, Student student) {
        for (String item : branches_array) {
            branches.add(branchService.findById(Integer.parseInt(item)));
        }

        //связали с филиалом
        student.setBranches(branches);

        for (Branch item : branches) {
            item.getStudents().add(student);
        }
    }

    @RequestMapping(value = "/get_students", method = RequestMethod.GET)
    @ResponseBody
    public String getStudents(HttpServletRequest request) throws ServletException, IOException, JsonGenerationException, JsonMappingException {
        List<Student> students = studentService.findAll();

        ObjectMapper mapper = new ObjectMapper();

        return mapper.writeValueAsString(students);
    }

    @RequestMapping(value = "/get_student_info", method = RequestMethod.POST)
    @ResponseBody
    public String getStudentInfo(HttpServletRequest request) throws ServletException, IOException, JsonGenerationException, JsonMappingException {

        Map result = RequestData.getData(request);
        int id = Integer.parseInt((String) result.get("id"));

        Student student = studentService.findById(id);

        ObjectMapper mapper = new ObjectMapper();

        System.out.println(mapper.writeValueAsString(student));

        return mapper.writeValueAsString(student);
    }

    @RequestMapping(value = "/get_students_group_branch", method = RequestMethod.POST)
    @ResponseBody
    public String getStudentsInBranch(HttpServletRequest request) throws ServletException, IOException {

        Map result = RequestData.getData(request);

        String group = (String) result.get("group");

        List<Student> students = studentService.findStudentGroupBranchNative(group);

        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(students);
    }

    @RequestMapping(value = "/get_students_teacher", method = RequestMethod.POST)
    @ResponseBody
    public String getStudentsTeacher(HttpServletRequest request) throws ServletException, IOException {

        Map result = RequestData.getData(request);
        int id = (int) Double.parseDouble (result.get("id").toString());

        List<Student> students = studentService.findStudentsTeaherNative(id);

        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(students);
    }

    @RequestMapping(value = "/get_students_teacher_time", method = RequestMethod.POST)
    @ResponseBody
    public String getStudentsTeacherTime(HttpServletRequest request) throws ServletException, IOException {

        Map result = RequestData.getData(request);
        int user_id = (int) Double.parseDouble (result.get("id").toString());
        int time_id = Integer.parseInt ((String) result.get("time_id"));

        List<Student> students = studentService.findStudentsTeaherTimeNative(user_id, time_id);

        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(students);
    }
}
