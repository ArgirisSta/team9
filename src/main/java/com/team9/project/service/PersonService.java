package com.team9.project.service;

import com.team9.project.domain.Person;

import com.team9.project.domain.Repair;

import org.springframework.ui.Model;


import java.util.List;

public interface PersonService {


    List<Person> findAll();

    Person findById(Long Id);

    Person findByAfm(String afm);

    Person findByemailAndPassword(String email, String password);


    List<Person> getAllPersons();

    Person createPerson(String afm, String name, String surname, String address, String email, String password,
                        String carBrand, String plateNumber, String userType);


}
