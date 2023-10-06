package com.templates.template.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RouterController {
    @GetMapping(value = "/")
    public String index(){
        return "index";
    }
}