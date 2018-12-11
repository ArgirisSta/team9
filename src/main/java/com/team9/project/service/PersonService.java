package com.team9.project.service;

import com.team9.project.domain.Person;
import org.springframework.ui.Model;

import java.util.List;

public interface PersonService {

    List<Person> getAllPersons();

    Person createPerson(String afm, String name, String surname, String address, String email, String password,
                        String carBrand, String plateNumber, String userType);

}
