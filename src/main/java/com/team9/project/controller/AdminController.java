package com.team9.project.controller;

import com.team9.project.domain.Person;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AdminController {

    @GetMapping(value = "/admin")
    public String showAdminPage() {
        return "index";
    }

    @GetMapping(value = "/admin/register")
    public String showRegistrationPage() {
        return "register";
    }

    @PostMapping(value = "/admin/register")
    public String handleRegistrationForm(Model model, Person person) {
        model.addAttribute("person", person);
        return "index";
    }


}
