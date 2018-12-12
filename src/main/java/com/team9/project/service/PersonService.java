package com.team9.project.service;

import com.team9.project.domain.Person;
import com.team9.project.domain.Repair;

import java.util.List;

public interface PersonService {

    List<Person> findAll();

    Person findById(Long Id);

    Person findByemailAndPassword(String email, String password);


}
