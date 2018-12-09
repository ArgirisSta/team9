// Persons
INSERT INTO persons (address, afm, car_brand, email, name, password, plate_number, surname, user_type) VALUES('Vanedi', 'A123456789', 'BMW', 'abc@abc.com', 'Nikos', '1234', 'ABC-1234', 'Mpekas', 'User');
INSERT INTO persons (address, afm, car_brand, email, name, password, plate_number, surname, user_type) VALUES('Olodion', 'B123456789', 'Alfa Romeo', 'one@abc.com', 'Giorgos', '1234', 'JKD-1234', 'Giakoumis', 'Administrator');
INSERT INTO persons (address, afm, car_brand, email, name, password, plate_number, surname, user_type) VALUES('Halion', 'C123456789', 'Ferrari', 'cba@abc.com', 'Eleftheria', '1234', 'MNK-1234', 'Papadopoulou', 'Administrator');
INSERT INTO persons (address, afm, car_brand, email, name, password, plate_number, surname, user_type) VALUES('Xakin', 'D123456789', 'Fiat', 'ppp@abc.com', 'Dimitris', '1234', 'PPP-1234', 'Xenakis', 'Administrator');
INSERT INTO persons (address, afm, car_brand, email, name, password, plate_number, surname, user_type) VALUES('Lori', 'E123456789', 'Land Rover', 'rov@abc.com', 'Argiris', '1234', 'AAA-1234', 'Stamatopoulos', 'Administrator');

// Repairs
INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('New tires', 250, '2018-12-25 9:30', 'Waiting', 'Minor', 1);
INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('Lights replacement', 550, '2018-12-22 10:45', 'Waiting', 'Minor', 2);
INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('Door replacement', 4250, '2017-12-25 14:25', 'Completed', 'Major', 3);
INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('Door replacement', 350, '2015-12-25 18:00', 'Completed', 'Major', 4);
INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('New tires', 330, '2022-12-25 12:00', 'Completed', 'Minor', 5);