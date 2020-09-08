package com.shangmao.map3.controller;

import com.shangmao.map3.pojo.User;
import com.shangmao.map3.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    private IUserService iUserService;

    @RequestMapping("/")
    public String index(){
        List<User> allUser = iUserService.getAllUser();
        System.out.println(allUser);
        return "index";
    }


}