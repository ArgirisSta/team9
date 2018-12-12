package com.team9.project.service;

import com.team9.project.domain.Person;
import com.team9.project.domain.Repair;

import java.time.LocalDate;
import java.util.List;

public interface RepairService {

    List<Repair> findAll();
    List<Repair> findById(Long Id);
    List<Repair> findRepairByPersonId(Person person);


}
