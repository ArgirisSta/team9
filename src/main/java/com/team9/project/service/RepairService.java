package com.team9.project.service;

import com.team9.project.domain.Person;
import com.team9.project.domain.Repair;
import com.team9.project.model.RepairModel;

import java.util.List;

public interface RepairService {

    List<RepairModel> findAll();
    Repair findById(Long Id);
    List<Repair> findRepairByPersonId(Person person);
    Repair create(RepairModel repairModel);
    Repair update(RepairModel repairModel);


}
