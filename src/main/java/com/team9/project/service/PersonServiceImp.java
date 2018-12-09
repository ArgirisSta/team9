package com.team9.project.service;

import com.team9.project.domain.Person;
import com.team9.project.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PersonServiceImp implements PersonService {

    @Autowired
    private PersonRepository personRepository;
    @Override
    public List<Person> getAllPersons() {
        return personRepository.findAll();
    }
}
