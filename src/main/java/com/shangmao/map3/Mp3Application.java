package com.shangmao.map3;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude= {DataSourceAutoConfiguration.class})
public class Mp3Application {

    public static void main(String[] args) {
        SpringApplication.run(Mp3Application.class, args);
    }

}
