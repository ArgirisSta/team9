package com.team9.project.controller;

import com.team9.project.converters.PersonModelToPersonConverter;
import com.team9.project.domain.Person;
import com.team9.project.domain.Repair;
import com.team9.project.service.AdminServiceImp;
import com.team9.project.service.PersonServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    AdminServiceImp adminServiceImp;
    PersonModelToPersonConverter converter;
    @Autowired
    PersonServiceImpl personService;

    @GetMapping(value = "/user/main")
    public String showAdminPage(Model model) {

        final String username = SecurityContextHolder.getContext().getAuthentication().getName();
        final Person person = personService.findByEmail(username);
        final List<Repair> repairs = (List<Repair>) person.getRepairs();
        model.addAttribute("personrepairs" ,repairs);
        return "/user/main";
    }


}
