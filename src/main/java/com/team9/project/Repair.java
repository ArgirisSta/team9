package com.team9.project;

import java.time.LocalDateTime;

public class Repair {

    private LocalDateTime repairDate;
    private RepairStatus repairStatus;
    private RepairType repairType;
    private double price;
    private Person owner;
    private String comment;

    public Repair(LocalDateTime repairDate, RepairStatus repairStatus, RepairType repairType, double price, Person owner, String comment) {
        this.repairDate = repairDate;
        this.repairStatus = repairStatus;
        this.repairType = repairType;
        this.price = price;
        this.owner = owner;
        this.comment = comment;
    }

    public LocalDateTime getRepairDate() {
        return repairDate;
    }

    public void setRepairDate(LocalDateTime repairDate) {
        this.repairDate = repairDate;
    }

    public RepairStatus getRepairStatus() {
        return repairStatus;
    }

    public void setRepairStatus(RepairStatus repairStatus) {
        this.repairStatus = repairStatus;
    }

    public RepairType getRepairType() {
        return repairType;
    }

    public void setRepairType(RepairType repairType) {
        this.repairType = repairType;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Person getOwner() {
        return owner;
    }

    public void setOwner(Person owner) {
        this.owner = owner;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    @Override
    public String toString() {
        return "Repair{" +
                "repairDate=" + repairDate +
                ", repairStatus=" + repairStatus +
                ", repairType=" + repairType +
                ", price=" + price +
                ", owner=" + owner +
                ", comment='" + comment + '\'' +
                '}';
    }
}
