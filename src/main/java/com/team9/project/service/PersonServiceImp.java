package com.team9.project.service;

import com.team9.project.domain.CarBrand;
import com.team9.project.domain.Person;
import com.team9.project.domain.UserType;
import com.team9.project.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.List;

@Service
public class PersonServiceImp implements PersonService {

    @Autowired
    private PersonRepository personRepository;

    @Override
    public List<Person> getAllPersons() {
        return personRepository.findAll();
    }

    @Override
    public Person createPerson(  String afm, String name, String surname, String address, String email, String password,
                               String carBrand, String plateNumber, String userType) {
        Person person = new Person(afm, name, surname, address, email, password, CarBrand.valueOf(carBrand),
                plateNumber, UserType.valueOf(userType));

        return person;
    }

}
