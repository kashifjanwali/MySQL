CREATE DATABASE navttc;
USE navttc;
CREATE TABLE web_sts(id INT PRIMARY KEY, Name VARCHAR(25), Age INT);
INSERT INTO web_sts VALUES(01, "Kashif Hussain", 23);
INSERT INTO web_sts VALUES(02, "Israr Ullah", 20),
(03, "Muhammad Saleem", 21);
SELECT * FROM web_sts;                              -- Select All Rows / Records from a table 
SELECT * FROM web_sts WHERE Age >=22;               -- Select students age >= 22
SELECT  max(id) as "Last Student"  FROM web_sts;    --  max number of id
SELECT Name FROM web_sts WHERE Age <21;             -- Select Names of students age < 21 
SELECT * FROM web_sts LIMIT 1;                      -- First Row / Record of a table 
SELECT * FROM web_sts ORDER BY id DESC LIMIT 1;     -- Last Row / Record of a table 
