package com.qa.config;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

//This is a convenience annotation that is equivalent to 
//declaring @Configuration, @EnableAutoConfiguration and @ComponentScan.
@ComponentScan(basePackages = "com.qa")
@SpringBootApplication
public class Application extends SpringBootServletInitializer{

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

}