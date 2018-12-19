package com.team9.project.controller;

import com.team9.project.domain.Person;
import com.team9.project.form.RegisterForm;
import com.team9.project.model.PersonModel;
import com.team9.project.service.AdminService;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;


@Controller

public class  AdminController {

    @Autowired
    private AdminService adminService;

    @GetMapping(value = "/admin")
    public String showAdminPage() {

        return "/admin/index";
    }

    @GetMapping(value = "/admin/addUser")
    public String showRegistrationPage(Model model) {
        model.addAttribute("registerForm", new RegisterForm());
        return "/admin/addUser";
    }

    @PostMapping(value = "/admin/addUser")
    public String handleRegistrationForm(Model model, @Valid @ModelAttribute("registerForm") RegisterForm registerForm,
                                         BindingResult bindingResult) {
        if(bindingResult.hasErrors()) {
            return "/admin/addUser";
        }
        adminService.registerPerson(registerForm);
        return "/admin/addUser";
    }

    @GetMapping(value = "/admin/search")
    public String handleSearch(Model model, @RequestParam("criteria") String criteria) {

        String digitRegex = "\\d+";
        List<PersonModel> personList;

        if(criteria.isEmpty()) {
            personList = adminService.findAllPersons();
        }

        else if(criteria.matches(digitRegex)) {
            personList = adminService.findPersonsByAfm(criteria);
        }
        else {
            personList = adminService.findPersonsByEmail(criteria);
        }

        model.addAttribute("foundPersonList", personList);

        return "/admin";
    }

    @GetMapping("/admin/updatePerson/{id}")
    public String updateRepairGet (Model model, @PathVariable(name = "id") String id ) {

        PersonModel personModel = adminService.findPersonById(Long.parseLong(id));
        model.addAttribute("personForm", personModel);
        return "updatePersonForm";
    }

    @PostMapping(value = "/admin/updatePerson")
    public String updatePerson(Model model, @ModelAttribute("personForm") PersonModel personModel,
                                  BindingResult bindingResult) {


         if (bindingResult.hasErrors()) {

             //model.addAttribute("personUpdateError", "Modifications could not be applied. Please try again");
         }
         else {
             adminService.updatePerson(personModel);
             model.addAttribute("personUpdateSuccess", "Modified information for person with ID : " + personModel.getId());
         }

        return "redirect:/admin";
    }

    @GetMapping(value = "/admin/deletePerson/{id}")
    public String deletePersonGet(@PathVariable(name = "id") String id) {
        adminService.deletePersonById(Long.parseLong(id));
        return "redirect:/admin";
    }

    @PostMapping(value = "/admin/deletePerson/{id}")
    public String deletePerson(@PathVariable(name = "id") String id) {

        adminService.deletePersonById(Long.parseLong(id));

        return "index";
    }
}
