package com.team9.project;

public enum RepairStatus {

    WAITING("Waiting"),
    IN_PROGRESS("In Progress"),
    COMPLETED("Completed");

    private String repairStatus;

    RepairStatus(String repairStatus) {
        this.repairStatus = repairStatus;
    }
}
