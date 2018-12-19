package com.team9.project.service;

import com.team9.project.converters.PersonModelToPersonConverter;
import com.team9.project.converters.PersonToPersonModelConverter;
import com.team9.project.domain.Person;
import com.team9.project.form.RegisterForm;
import com.team9.project.model.PersonModel;
import com.team9.project.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class AdminServiceImp implements AdminService {
    @Autowired
    private PersonRepository personRepository;

    @Autowired
    private PersonToPersonModelConverter converter;

    @Autowired
    private PersonModelToPersonConverter personModelToPersonConverter;

    public Person convertRegisterFormToPerson(RegisterForm registerForm) {
        Person person = new Person(registerForm.getAfm(), registerForm.getName(), registerForm.getSurname(),
                registerForm.getAddress(), registerForm.getEmail(), registerForm.getPassword(),
                registerForm.getCarBrand(), registerForm.getPlateNumber(), registerForm.getUserType());
        return person;
    }

    @Override
    public void registerPerson(RegisterForm registerForm) {
        personRepository.save(convertRegisterFormToPerson(registerForm));
    }

    @Override
    public List<PersonModel> findPersonsByAfm(String afm) {
        return
                personRepository.findPersonsByAfm(afm)
                        .stream()
                        .map(person -> converter.mapToModel(person))
                        .collect(Collectors.toList());
    }

    @Override
    public List<PersonModel> findPersonsByEmail(String email) {
        return

                personRepository.findPersonsByEmail(email)
                        .stream()
                        .map(person -> converter.mapToModel(person))
                        .collect(Collectors.toList());
    }

    @Override
    public PersonModel findPersonById(long id) {
        return  converter.mapToModel(personRepository.findById(id));
    }

    @Override
    public void updatePerson(PersonModel personModel) {
        Person personToUpdate = personRepository.findById(personModel.getId());
        personRepository.save(personModelToPersonConverter.convertModelToPerson(personModel, personToUpdate));
    }

    @Override
    public void deletePersonById(long id) {
        personRepository.deleteById(id);
    }
}