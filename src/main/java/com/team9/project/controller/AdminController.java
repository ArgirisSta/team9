package com.team9.project.controller;

import com.team9.project.domain.Person;
import com.team9.project.form.RegisterForm;
import com.team9.project.service.AdminService;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.List;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    @GetMapping(value = "/admin")
    public String showAdminPage() {
        return "index";
    }

    @GetMapping(value = "/admin/register")
    public String showRegistrationPage(Model model) {
        model.addAttribute("registerForm", new RegisterForm());
        return "register";
    }

    @PostMapping(value = "/admin/register")
    public String handleRegistrationForm(Model model, @Valid @ModelAttribute("registerForm") RegisterForm registerForm,
                                         BindingResult bindingResult) {
        if(bindingResult.hasErrors()) {
            return "register";
        }

        adminService.registerPerson(registerForm);

        return "success";
    }

    @GetMapping(value = "/admin/search")
    public String handleSearch(Model model, @RequestParam("criteria") String criteria) {

        String digitRegex = "\\d+";
        List<Person> personList;

        if(criteria.matches(digitRegex)) {
            personList = adminService.findPersonByAfm(criteria);
        }
        else {
            personList = adminService.findPersonBySurname(criteria);
        }

        System.out.println(personList);
        if(personList.isEmpty()) {
            model.addAttribute("searchError", "Person could not be found");
            return "index";
        }
        model.addAttribute("foundPersonList", personList);

        return "index";
    }
}
