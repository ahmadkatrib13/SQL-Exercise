SELECT * FROM students;
#basic queires
#1
SELECT name FROM students;
#2
SELECT * FROM students WHERE Age>30;
#3
SELECT name FROM students WHERE Age = 30 AND Gender like 'F';
#5
 INSERT INTO students VALUES('7','ahmad',21,'M',500);
 #6
 UPDATE students SET Points = Points+10 WHERE name="Basma";
#7
 UPDATE students SET Points = Points-10 WHERE name="Alex";
#8 updated
#9 done

#creating tables

CREATE TABLE "graduates" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	INTEGER,
    "Gender" TEXT,
    "Points" INTEGER,
    "Graduation" TEXT,
	PRIMARY KEY("ID" AUTOINCREMENT)
);

#1
INSERT INTO graduates (Name,Age,Gender,Points)
SELECT name,age,gender,points FROM students
WHERE name like "Layal";

#2
UPDATE graduates
SET Graduation = "2018-09-08" 
WHERE Name like "Layal";

#3
DELETE FROM students
WHERE name like "Layal";

#4 done

#joins

#1

SELECT employees.Name, companies.Name, companies.Date
FROM  employees
INNER JOIN companies on employees.Company = companies.Name;

#2

SELECT employees.Name FROM  employees
INNER JOIN companies
ON companies.Name = employees.Company WHERE companies.Date < 2000;

#3

SELECT companies.Name FROM companies
INNER JOIN employees
ON companies.Name = employees.Company WHERE employees.Role Like "Graphic Designer";