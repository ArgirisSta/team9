package com.team9.project.service;

import com.team9.project.form.RegisterForm;
import com.team9.project.model.PersonModel;

import java.util.List;

public interface AdminService {

     void registerPerson(RegisterForm registerForm);

     List<PersonModel> findPersonsByAfm(String ctiteria);

     List<PersonModel> findPersonsBySurname(String criteria);


}
