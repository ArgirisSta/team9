package com.team9.project.service;

import com.team9.project.domain.Person;
import com.team9.project.domain.Repair;
import com.team9.project.exception.PersonNotFoundException;
import com.team9.project.repository.RepairRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Service
public class RepairServiceImpl {


    @Autowired
    RepairRepository repairRepository;

    public List<Repair> findAll(){
        return repairRepository.findAll();

    }


    public Repair findById(Long Id) {
        return repairRepository.findById(Id)
                .orElseThrow(PersonNotFoundException::new);

    }

    public List<Repair> findRepairByPersonId(Person person){
        return
                repairRepository.findByowner(person);
    }

    public Repair save(Repair repair){
        return repairRepository.save(repair);
    }


}
