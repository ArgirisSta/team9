package com.team9.project.service;

import com.team9.project.domain.Person;
<<<<<<< HEAD
import com.team9.project.domain.Repair;
=======
import org.springframework.ui.Model;
>>>>>>> 46b00b9d5d5e902ffe4d1ab83b9d1a9223a72ffc

import java.util.List;

public interface PersonService {

<<<<<<< HEAD
    List<Person> findAll();

    Person findById(Long Id);

    Person findByemailAndPassword(String email, String password);

=======
    List<Person> getAllPersons();

    Person createPerson(String afm, String name, String surname, String address, String email, String password,
                        String carBrand, String plateNumber, String userType);
>>>>>>> 46b00b9d5d5e902ffe4d1ab83b9d1a9223a72ffc

}
