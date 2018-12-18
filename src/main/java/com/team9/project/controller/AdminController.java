package com.team9.project.controller;

import com.team9.project.domain.Person;
import com.team9.project.form.RegisterForm;
import com.team9.project.model.PersonModel;
import com.team9.project.service.AdminService;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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
        List<PersonModel> personList;

        if(criteria.matches(digitRegex)) {
            personList = adminService.findPersonsByAfm(criteria);
        }
        else {
            personList = adminService.findPersonsByEmail(criteria);
        }

        if(personList.isEmpty()) {
            model.addAttribute("searchError", "Person could not be found");
            return "index";
        }
        model.addAttribute("foundPersonList", personList);

        return "persons";
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

        System.out.println("-----------------------------------------------------------FDFDFDFFDDDF");

         if (bindingResult.hasErrors()) {

        //     return "addRepair";
         }
         else {
             System.out.println(personModel.getName());
             adminService.updatePerson(personModel);
         }

        System.out.println("---------------------------" +personModel.getName());
        adminService.updatePerson(personModel);

        return "redirect:/";
    }
}
