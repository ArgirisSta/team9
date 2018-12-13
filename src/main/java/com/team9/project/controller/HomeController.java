package com.team9.project.controller;

import com.team9.project.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private PersonService personService;


    @GetMapping(value = "/")
    public String showHomePage() {
         return "index";
    }


}
