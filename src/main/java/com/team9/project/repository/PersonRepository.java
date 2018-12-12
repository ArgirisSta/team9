package com.team9.project.repository;

import com.team9.project.domain.Person;
import com.team9.project.domain.Repair;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface PersonRepository extends JpaRepository<Person, Long> {

    List<Person> findAll();

    Optional<Person> findById(Long Id);

    List<Person> findByemailAndPassword(String email, String password);


}
