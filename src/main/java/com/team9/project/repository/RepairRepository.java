package com.team9.project.repository;

import com.team9.project.domain.Person;
import com.team9.project.domain.Repair;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;
@Repository
public interface RepairRepository extends JpaRepository<Repair,Long> {


    List<Repair> findAll();
    Optional<Repair> findById(Long Id);
    List<Repair> findByowner(Person person);
    Repair save(Repair repair);



}
