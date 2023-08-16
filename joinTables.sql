CREATE DATABASE Student_Info;
USE Student_Info;

CREATE TABLE city (
    c_id INT PRIMARY KEY,
    c_Name VARCHAR(12)
);
CREATE TABLE sts (
    std_id INT PRIMARY KEY,
    std_Nmae VARCHAR(20),
    std_Age INT,
    std_cty_id INT,
    FOREIGN KEY (std_cty_id)
        REFERENCES city (c_id)
);
INSERT INTO city VALUES(1001, "Rawalpindi"),
(2002, "Islamabad");
SELECT 
    *
FROM
    city;

INSERT INTO sts VALUES(01, "Kashif", 23, 1001),
(02, "Ali", 20, 2002),
(03, "Rehman", 22, 1001);
SELECT 
    *
FROM
    sts;

SELECT 
    std_id AS "Serial", std_Nmae AS 'Student Name', c_Name AS "From"
FROM
    sts AS Student
        JOIN
    city AS City ON Student.std_cty_id = City.c_id;