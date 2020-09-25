package com.shangmao.mp3.controller;

import com.shangmao.mp3.pojo.ResultBody;
import com.shangmao.mp3.pojo.User;
import com.shangmao.mp3.service.IUserService;
import com.shangmao.mp3.util.RequestUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

@Controller
public class UserController {

    @Autowired
    private IUserService iUserService;

    @RequestMapping("/")
    public String login(Model model) {
        model.addAttribute("name", "demaxiya");
        return "login";
    }

    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    @RequestMapping("/login")
    @ResponseBody
    public ResultBody login(User user) {
        boolean flag = iUserService.getAllUser(user);
        if (flag) {
            return ResultBody.buildSuccess();
        }
        System.out.println("Test/...............");
        return ResultBody.buildFail();
    }


    @RequestMapping("/GeetestOnload")
    public void GeetestOnload(HttpServletRequest request, HttpServletResponse response) {
        //打开页面 出现验证码的ajax异步通信
        RequestUtil.GeetestOnload(request, response);
    }

}
