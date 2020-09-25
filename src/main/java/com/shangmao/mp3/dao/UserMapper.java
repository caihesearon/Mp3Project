package com.shangmao.mp3.dao;


import com.shangmao.mp3.pojo.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    List<User> getAllUser(User user);
}
