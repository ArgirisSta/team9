package com.team9.project.controller;

import com.team9.project.form.RegisterForm;
import com.team9.project.model.PersonModel;
import com.team9.project.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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

        return "/admin";
    }

    @GetMapping(value = "/admin/index")
    public String handleSearch(Model model, @RequestParam("criteria") String criteria, RedirectAttributes redirectAttributes  ) {

        String digitRegex = "\\d+";
        List<PersonModel> personList;

        if(criteria.matches(digitRegex)) {
            personList = adminService.findPersonsByAfm(criteria);
        }
        else {
            personList = adminService.findPersonsByEmail(criteria);
        }

        System.out.println(personList);
        if(personList.isEmpty()) {
            model.addAttribute("searchError", "Person could not be found");
            return String.format("redirect:%s", "/admin");
            //return "/admin/index";
        }
        model.addAttribute("foundPersonList", personList);
        redirectAttributes.addFlashAttribute("foundPersonList", personList);
        return String.format("redirect:%s", "/admin");
        //return "index";
    }



    @GetMapping("/admin/updatePerson/{id}")
    public String updateRepairGet (Model model, @PathVariable(name = "id") String id ) {

        PersonModel personModel = adminService.findPersonById(Long.parseLong(id));
        model.addAttribute("personForm", personModel);
        return "admin/updatePersonForm";
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
    public String deletePersonGet() {

        return "redirect:/admin";
    }

    @PostMapping(value = "/admin/deletePerson/{id}")
    public String deletePerson(@PathVariable(name = "id") String id) {

        adminService.deletePersonById(Long.parseLong(id));

        return "redirect:/admin";
    }
}