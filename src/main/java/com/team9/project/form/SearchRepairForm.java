package com.team9.project.form;

import com.team9.project.domain.RepairStatus;
import com.team9.project.domain.RepairType;

import java.time.LocalDateTime;

public class SearchRepairForm {

    private LocalDateTime Fromdate;
    private LocalDateTime Todate;
    private String Afm;
    private String Plate;


    public LocalDateTime getFromdate() {
        return Fromdate;
    }

    public void setFromdate(LocalDateTime fromdate) {
        Fromdate = fromdate;
    }

    public LocalDateTime getTodate() {
        return Todate;
    }

    public void setTodate(LocalDateTime todate) {
        Todate = todate;
    }

    public String getAfm() {
        return Afm;
    }

    public void setAfm(String afm) {
        Afm = afm;
    }

    public String getPlate() {
        return Plate;
    }

    public void setPlate(String plate) {
        Plate = plate;
    }


}
