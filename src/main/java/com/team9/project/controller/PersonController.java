package com.team9.project.controller;

import com.team9.project.domain.Person;
import com.team9.project.domain.Repair;
import com.team9.project.service.PersonService;
import com.team9.project.service.PersonServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Optional;

@Controller
@RequestMapping("/")
public class PersonController {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    PersonServiceImpl personService;

    @GetMapping("/persons")
    public String person (Model model, @RequestParam(value = "id") Long id) {
        Person person;
        logger.info("=============================");
        logger.info("====Getting all authors====");
         personService.findAll().forEach(personl -> logger.info(personl.toString()));
            person = personService.findById(id);
            model.addAttribute("name", person.getName());
            model.addAttribute("surname", person.getSurname());

            return "hello";


    }




}
