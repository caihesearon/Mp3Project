package com.shangmao.map3.controller;

import com.shangmao.map3.pojo.User;
import com.shangmao.map3.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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

    @RequestMapping("/test")
    @ResponseBody
    public List<User> getJson(){
        return iUserService.getAllUser();
    }


}
