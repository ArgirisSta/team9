package com.team9.project.service;

import com.team9.project.domain.Person;
import com.team9.project.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;

public class AdminServiceImp implements AdminService {
    @Autowired
    PersonRepository personRepository;

    @Override
    public void registerPerson(Person person) {
        personRepository.save(person);
    }
}
