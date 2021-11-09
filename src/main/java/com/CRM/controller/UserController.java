package com.CRM.controller;

import com.CRM.RequestData;
import com.CRM.entity.System.User;
import com.CRM.service.UserService;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Map;
@Controller

public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/get_me", method = RequestMethod.POST)
    @ResponseBody
    public String getUser(HttpServletRequest request) throws ServletException, IOException {
        //получить данные из запроса
        Map result = RequestData.getData(request);
        // данные из Map записываем в переменные
        String username = (String) result.get("username");

        User user = userService.findUserByName(username);

        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(user);
//        return new Gson().toJson(user);
    }

    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    @ResponseBody
    public String addUser(HttpServletRequest request) throws ServletException, IOException {
        //получить данные из запроса
        Map result = RequestData.getData(request);
        // данные из Map записываем в переменные
        String name = (String) result.get("name");
        String username = (String) result.get("username");
        String password = (String) result.get("password");

        User newUser = new User(name, username, password);

        if (!userService.saveUser(newUser)) {
            return "{\"status\":\"error\",\"message\":\"This user already exists\"}";
        }

        return "{\"status\":\"success\",\"message\":\"success\"}";
    }
}