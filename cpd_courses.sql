CREATE DATABASE cpd_courses;
USE cpd_courses;
CREATE TABLE web_dev (
    sr INT PRIMARY KEY,
    Name VARCHAR(30),
    Age INT,
    CNIC VARCHAR(15),
    Area VARCHAR(12)
);

INSERT INTO web_dev VALUES (01, "Kashif Hussain", 23, "71401-5958458-5", "GB"),
(02, "Israr Ullah", 20, "55201-5637985-7", "Balochistan"),
(03, "M Saleem", 21, "55301-8764568-3", "Balochistan");
SELECT 
    *
FROM
    (web_dev);

CREATE TABLE teacher (
    tid INT,
    Name VARCHAR(25),
    std_id INT,
    FOREIGN KEY (std_id)
        REFERENCES web_dev (sr)
);
INSERT INTO teacher Value(001, "Mohsin Khan", 1);
SELECT 
    *
FROM
    teacher;

SELECT 
    tid, teacher.Name, sr
FROM
    teacher AS t
        JOIN
    web_dev AS s ON i.std_id = s.sr;
SELECT 
    tid AS 'Sr#',
    t.Name AS 'Teacher Name',
    s.Name AS 'Student Name'
FROM
    teacher AS t
        JOIN
    web_dev AS s ON t.std_id = s.sr;