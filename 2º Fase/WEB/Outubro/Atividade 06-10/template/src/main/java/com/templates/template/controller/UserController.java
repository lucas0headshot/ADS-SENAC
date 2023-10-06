package com.templates.template.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {
    @GetMapping(value = "/receive")
    public String receber(@RequestParam String name){
        return "Name: " + name;
    }
}