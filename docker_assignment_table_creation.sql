CREATE DATABASE university;

USE university;

CREATE TABLE student(
	Id INT,
	FirstName VARCHAR(20) NOT NULL, 
	LastName VARCHAR(20) NOT NULL,
	EmailAddr VARCHAR(40),
	Major VARCHAR(25) NOT NULL,
	PRIMARY KEY(Id)
) ENGINE=INNODB;

CREATE TABLE course(
	Crn INT,
	Subject VARCHAR(20) NOT NULL, 
	CourseNumber INT NOT NULL,
	Title VARCHAR(40) NOT NULL,
	Credits INT NOT NULL,
	PRIMARY KEY(Crn)
) ENGINE=INNODB;

CREATE TABLE enrollment(
	Id INT,
	Student_id INT,
	Course_id INT,
	PRIMARY KEY(Id),
	FOREIGN KEY (Student_id)
		REFERENCES student(Id),
	FOREIGN KEY (Course_id)
		REFERENCES course(Crn)
) ENGINE=INNODB;
