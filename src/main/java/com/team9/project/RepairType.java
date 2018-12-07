package com.team9.project;

public enum RepairType {

    MINOR("Minor Repair"),
    MAJOR("Major Repair");

    private String repairType;

    RepairType(String repairType) {
        this.repairType = repairType;
    }
}
