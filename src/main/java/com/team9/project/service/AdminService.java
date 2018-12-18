package com.team9.project.service;

import com.team9.project.domain.Person;
import com.team9.project.form.RegisterForm;
import com.team9.project.model.PersonModel;

import java.util.List;

public interface AdminService {

     void registerPerson(RegisterForm registerForm);

     List<PersonModel> findPersonsByAfm(String afm);

     List<PersonModel> findPersonsByEmail(String email);

     List<PersonModel> findAllPersons();

     PersonModel findPersonById(long id);

     void updatePerson(PersonModel personModel);

     void deletePersonById(long id);

}
