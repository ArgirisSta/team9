 package com.team9.project.domain;

import javax.persistence.*;

@Entity
@Table(name = "Persons")
public class Person {
    @Id
    @Column(name = "person_id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long personId;
    @Column(name = "afm", length = 20, unique = true)
    private String afm;
    @Column(name = "name", length = 15)
    private String name;
    @Column(name = "surname", length = 25)
    private String surname;
    @Column(name = "address", length = 30)
    private String address;
    @Column(name = "email", length = 20)
    private String email;
    @Column(name = "password", length = 40, nullable = false)
    private String password;
    @Enumerated(EnumType.STRING)
    @Column(name = "car_brand", length = 10)
    private CarBrand carBrand;
    @Column(name = "plate_number", length = 8)
    private String plateNumber;
    @Enumerated(EnumType.STRING)
    @Column(name = "user_type", length = 15, nullable = false)
    private UserType userType;

    public long getPersonId() {
        return personId;
    }

    public void setPersonId(long personId) {
        this.personId = personId;
    }

    public String getAfm() {
        return afm;
    }

    public void setAfm(String afm) {
        this.afm = afm;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public CarBrand getCarBrand() {
        return carBrand;
    }

    public void setCarBrand(CarBrand carBrand) {
        this.carBrand = carBrand;
    }

    public String getPlateNumber() {
        return plateNumber;
    }

    public void setPlateNumber(String plateNumber) {
        this.plateNumber = plateNumber;
    }

    public UserType getUserType() {
        return userType;
    }

    public void setUserType(UserType userType) {
        this.userType = userType;
    }

    @Override
    public String toString() {
        return "Person{" +
                "personId=" + personId +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", address='" + address + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", carBrand=" + carBrand +
                ", plateNumber='" + plateNumber + '\'' +
                ", userType=" + userType +
                '}';
    }
}
