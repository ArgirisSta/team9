package com.team9.project.repository;

import com.team9.project.domain.Person;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import java.util.List;
import java.util.Optional;

@Repository
public interface PersonRepository extends JpaRepository<Person, Long> {


//    List<Person findAll();

    Person findById(long Id);

    List<Person> findByemailAndPassword(String email, String password);

    Optional<Person> findByAfm(String afm);

    List<Person> findPersonsByAfm(String afm);

    List<Person> findPersonsByEmail(String email);

    Person findByplateNumber(String Plate);

}
