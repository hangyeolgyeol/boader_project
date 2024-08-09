package com.bitstudy.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


// main 컨트롤러
@Controller
public class MainController {
    @GetMapping("/")
    public String main() {
        return "index";
    }
}
