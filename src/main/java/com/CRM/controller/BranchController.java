package com.CRM.controller;

import com.CRM.RequestData;
import com.CRM.entity.Branch;
import com.CRM.service.BranchService;
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
public class BranchController {
    @Autowired
    private BranchService branchService;

    @RequestMapping(value = "/add_branch", method = RequestMethod.POST)
    @ResponseBody
    public String addBranch(HttpServletRequest request) throws ServletException, IOException {
        //получить данные из запроса
        Map result = RequestData.getData(request);
        // данные из Map записываем в переменные
        String new_branch = (String) result.get("new_branch");

        List<Branch> branches = branchService.findAll();

        for (Branch item : branches) {
            if (item.getName().equals(new_branch)) {
                return "{\"status\":\"error\",\"message\":\"Такой филиал уже есть\"}";
            }
        }

        branchService.save(new Branch(new_branch));
        return "{\"status\":\"success\",\"message\":\"success\"}";
    }

    @RequestMapping(value = "/get_branches", method = RequestMethod.GET)
    @ResponseBody
    public String getBranches(HttpServletRequest request) throws ServletException, IOException, JsonGenerationException, JsonMappingException {
        List<Branch> branches = branchService.findAll();

        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(branches);
    }
}
