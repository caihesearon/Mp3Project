package com.shangmao.mp3.service.impl;

import com.shangmao.mp3.dao.UserMapper;
import com.shangmao.mp3.pojo.User;
import com.shangmao.mp3.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements IUserService {

    @Autowired(required = false)
    private UserMapper userMapper;

    @Override
    public List<User> getAllUser() {
        return userMapper.getAllUser();
    }
}
