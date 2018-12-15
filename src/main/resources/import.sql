// Persons
INSERT INTO persons (address, afm, car_brand, email, name, password, plate_number, surname, user_type) VALUES('Vanedi', 'A123456789', 'BMW', 'abc@abc.com', 'Nikos', '1234', 'ABC-1234', 'Mpekas', 'USER');
INSERT INTO persons (address, afm, car_brand, email, name, password, plate_number, surname, user_type) VALUES('Olodion', 'B123456789', 'ALFA_ROMEO', 'one@abc.com', 'Giorgos', '1234', 'JKD-1234', 'Giakoumis', 'ADMIN');
INSERT INTO persons (address, afm, car_brand, email, name, password, plate_number, surname, user_type) VALUES('Halion', 'C123456789', 'FERRARI', 'cba@abc.com', 'Eleftheria', '1234', 'MNK-1234', 'Papadopoulou', 'ADMIN');
INSERT INTO persons (address, afm, car_brand, email, name, password, plate_number, surname, user_type) VALUES('Xakin', 'D123456789', 'FIAT', 'ppp@abc.com', 'Dimitris', '1234', 'PPP-1234', 'Xenakis', 'ADMIN');
INSERT INTO persons (address, afm, car_brand, email, name, password, plate_number, surname, user_type) VALUES('Lori', 'E123456789', 'LAND_ROVER', 'rov@abc.com', 'Argiris', '1234', 'AAA-1234', 'Stamatopoulos', 'ADMIN');

// Repairs

INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('New tires', 250, '2018-12-25 9:30', 'WAITING', 'MINOR', 1);
INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('Lights replacement', 550, '2018-12-22 10:45', 'WAITING', 'MAJOR', 2);
INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('Door replacement', 4250, '2017-12-25 14:25', 'COMPLETED', 'MAJOR', 3);
INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('Door replacement', 350, '2015-12-25 18:00', 'WAITING', 'MAJOR', 4);
INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('New tires', 330, '2022-12-25 12:00', 'COMPLETED', 'MINOR', 1);
