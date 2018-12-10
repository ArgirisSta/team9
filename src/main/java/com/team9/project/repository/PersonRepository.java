package com.team9.project.repository;
import com.team9.project.domain.Person;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;


public interface PersonRepository extends JpaRepository<Person, Long> {

        List<Person> findAll();

        Optional<Person> findById(Long Id);

        Person findPersonByemailAndPassword(String email, String password);
}
