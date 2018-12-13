package com.team9.project.service;

import com.team9.project.domain.Person;
import com.team9.project.form.RegisterForm;
import com.team9.project.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImp implements AdminService {
    @Autowired
    PersonRepository personRepository;

    public Person convertRegisterFormToPerson(RegisterForm registerForm) {
        Person person = new Person(registerForm.getAfm(), registerForm.getName(), registerForm.getSurname(),
                registerForm.getAddress(), registerForm.getEmail(), registerForm.getPassword(),
                registerForm.getCarBrand(), registerForm.getPlateNumber(),registerForm.getUserType());
        return person;
    }

    @Override
    public void registerPerson(RegisterForm registerForm) {
        personRepository.save(convertRegisterFormToPerson(registerForm));
    }
}
