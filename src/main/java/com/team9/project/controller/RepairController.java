package com.team9.project.controller;

import com.team9.project.domain.CarBrand;
import com.team9.project.domain.Person;
import com.team9.project.domain.Repair;
import com.team9.project.service.PersonServiceImpl;
import com.team9.project.service.RepairServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.*;


@Controller
@RequestMapping("/")
public class RepairController { private final Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    RepairServiceImpl repairService;

    @GetMapping("/repairs")
    public String repair (Model model, @RequestParam(value = "id") Long id) {
        Repair repair;
        repair = repairService.findById(id);
        model.addAttribute("name", repair.getRepairDate());
        model.addAttribute("surname", repair.getComment());

        return "hello";


    }

    @GetMapping("/repairsByPersonId")
    public String repairByPersonId (Model model, @RequestParam(value = "id") Long id) {
        List<Repair> repair;
        Person person = new Person(1);


        repair = (List<Repair>) repairService.findRepairByPersonId(person);
        logger.info("=============================");
        logger.info("====Getting all Repairs====");
        //repairService.findRepairByPersonId(person).forEach(repairl -> logger.info(repairl.toString()));
        model.addAttribute("repair", repair);
       // model.addAttribute("surname", repair.get(1).getRepairType());

        return "listings";


    }




}
