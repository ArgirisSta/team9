package com.team9.project.service;


import com.team9.project.domain.Person;

import java.util.List;

public interface PersonService {

    List<Person> findAll();
    Person findById(Long id);
    Person findPersonByemailAndPassword(String email, String password);

}
