package com.team9.project.controller;

import com.team9.project.domain.Person;
import com.team9.project.form.RegisterForm;
import com.team9.project.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    @GetMapping(value = "/admin")
    public String showAdminPage() {
        return "index";
    }

    @GetMapping(value = "/admin/register")
    public String showRegistrationPage() {
        return "register";
    }

    @PostMapping(value = "/admin/register")
    public String handleRegistrationForm(Model model, @Valid @ModelAttribute("registerForm") RegisterForm registerForm,
                                         BindingResult bindingResult, Person person) {
        if(!bindingResult.hasErrors()) {
            model.addAttribute("person", person);
            adminService.registerPerson(person);
            return "registered";
        }

        return "index";
    }


}
