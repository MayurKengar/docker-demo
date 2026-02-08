package com.docker.demo.controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1")
public class DockerDemoController {

    @GetMapping("/greet")
    public String getGreeting() {
        return "Hey there!!!";
    }
}
