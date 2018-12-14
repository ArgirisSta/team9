package com.team9.project.service;

import com.team9.project.domain.Person;
import com.team9.project.form.RegisterForm;

import java.util.List;

public interface AdminService {

     void registerPerson(RegisterForm registerForm);

     List<Person> findPersonByAfm(String afm);

     List<Person> findPersonBySurname(String surname);
}
