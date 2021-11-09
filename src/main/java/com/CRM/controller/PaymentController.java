package com.CRM.controller;

import com.CRM.RequestData;
import com.CRM.entity.Student.Payment;
import com.CRM.entity.Student.Student;
import com.CRM.service.PaymentService;
import com.CRM.service.StudentService;
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
public class PaymentController {
    @Autowired
    private PaymentService paymentService;
    @Autowired
    private StudentService studentService;

    @RequestMapping(value = "/add_payment", method = RequestMethod.POST)
    @ResponseBody
    public String addBranch(HttpServletRequest request) throws ServletException, IOException {
        //получить данные из запроса
        Map result = RequestData.getData(request);
        // данные из Map записываем в переменные

        String reason = (String) result.get("reason");

        if(reason.equals("mounth")){
            reason = (String) result.get("reason_mounth");
        }
        else{
            reason = (String) result.get("reason_own");
        }

        int number = Integer.parseInt((String) result.get("number"));
        int amount = Integer.parseInt((String) result.get("amount"));
        String date_pay = (String) result.get("date_pay");
        String remark = (String) result.get("remark");
        int student_id = Integer.parseInt((String) result.get("student_id"));

        Student student = studentService.findById(student_id);

        paymentService.save(new Payment(number, date_pay, amount, reason, remark, student));
        return "{\"status\":\"success\",\"message\":\"success\"}";
    }

    @RequestMapping(value = "/get_payments_by_id", method = RequestMethod.POST)
    @ResponseBody
    public String getBranches(HttpServletRequest request) throws ServletException, IOException, JsonGenerationException, JsonMappingException {

        Map result = RequestData.getData(request);

        int id = Integer.parseInt((String) result.get("id"));

        List<Payment> payments = paymentService.findPaymentsByStudentIdNative(id);
//        List<Payment> branches = paymentService.findAll();

        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(payments);
    }
}
