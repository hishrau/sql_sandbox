 CREATE TABLE med_area
(
    area_num TINYINT,
    area_address VARCHAR(1000)
);

CREATE TABLE patients(
	FULL_NAME VARCHAR(100),
	SEX CHAR(1),
	BIRTH_DATE DATE,
	OMS_NUM BIGINT
);

ALTER TABLE patients CHANGE full_name full_name VARCHAR(100) NOT NULL;
ALTER TABLE med_area CHANGE area_num area_num VARCHAR(1000) NOT NULL;
ALTER TABLE patients CHANGE oms_num oms_num BIGINT UNIQUE;
ALTER TABLE med_area ADD PRIMARY KEY(area_num);
ALTER TABLE patients
	ADD COLUMN card_num INT;
ALTER TABLE patients
	ADD COLUMN area_num TINYINT;
ALTER TABLE patients 
	ADD FOREIGN KEY (area_num) REFERENCES med_area(area_num);
ALTER TABLE med_area CHANGE area_num area_num TINYINT AUTO_INCREMENT;
ALTER TABLE patients CHANGE sex sex CHAR(1) DEFAULT 'м';
DESCRIBE med_area;
DESCRIBE patients;
CREATE TABLE doctors(
    doctor_num INT AUTO_INCREMENT,
    doctor_name VARCHAR(250) NOT NULL,
    spec VARCHAR(100),
    cabinet_num TINYINT,
    PRIMARY KEY(doctor_num)
);
ALTER TABLE patients ADD PRIMARY KEY (oms_num);
CREATE TABLE talons (
    doctor_num INT,
    oms_num BIGINT,
    visit_time DATETIME NOT NULL,
    FOREIGN KEY (doctor_num) REFERENCES doctors(doctor_num),
    FOREIGN KEY (oms_num) REFERENCES patients(oms_num)
);
ALTER TABLE patients 
	ADD FOREIGN KEY (area_num) REFERENCES med_area(area_num);