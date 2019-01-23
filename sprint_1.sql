CREATE DATABASE university;

# Schema

CREATE TABLE STUDENT (
  studentID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR (255),
  lastName VARCHAR (100),
  firstName VARCHAR (100),
  dormPhone VARCHAR (12),
  dormName VARCHAR (10),
  dormRoom INT(2)
);

CREATE TABLE ADVISOR(
  advisorID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR (255),
  lastName VARCHAR (100),
  firstName VARCHAR (100)
);

CREATE TABLE ALUMNI(
  alumniEmail VARCHAR(50) NOT NULL PRIMARY KEY,
  lastName VARCHAR (100),
  firstName VARCHAR (100),
  formerStudentID INT (4)
);

CREATE TABLE MENTOR (
    mentorEmail VARCHAR(50) NOT NULL PRIMARY KEY,
    lastName VARCHAR(100) NOT NULL,
    firstName VARCHAR(100) NOT NULL,
    alumniEmail VARCHAR(50), FOREIGN KEY (alumniEmail) REFERENCES ALUMNI(alumniEmail),
    companyPhone VARCHAR(12) NOT NULL, FOREIGN KEY (companyPhone) REFERENCES COMPANY(companyPhone)
);

CREATE TABLE COMPANY(
  companyPhone VARCHAR(12) NOT NULL PRIMARY KEY,
  companyName VARCHAR (50),
  companyAdress VARCHAR (50),
  companyCity VARCHAR (50),
  companyState VARCHAR (50),
  companyZip INT (5)
);

CREATE TABLE ADVISOR_STUDENT_DATE (
    advisorID INT, FOREIGN KEY (advisorID) REFERENCES ADVISOR(advisorID),
    studentID INT, FOREIGN KEY (studentID) REFERENCES STUDENT(studentID),
    startDate DATETIME,
    endDate DATETIME
);

CREATE TABLE DEPARTMENT (
    advisorID INT, FOREIGN KEY (advisorID) REFERENCES ADVISOR(advisorID),
    departmentName VARCHAR(50) NOT  NULL PRIMARY KEY,
    officeBuildingName VARCHAR(50),
    officeRoom INT(2),
    officePhone VARCHAR(12)
);

CREATE TABLE  ALUMNI_HOME (
    alumniEmail VARCHAR(50), FOREIGN KEY (alumniEmail) REFERENCES ALUMNI(alumniEmail),
    homeAddress VARCHAR(50),
    homeCity VARCHAR(50),
    homeState VARCHAR(50),
    homeZip INT(5),
    homePhone VARCHAR(12)
);

CREATE TABLE  ADVISOR_MENTOR_DATE (
    advisorID INT, FOREIGN KEY (advisorID) REFERENCES ADVISOR(advisorID),
    mentorEmail VARCHAR(50), FOREIGN KEY (mentorEmail) REFERENCES MENTOR(mentorEmail),
    startDate DATETIME,
    endDate DATETIME
);

CREATE TABLE GRADUATION(
  studentID INT, FOREIGN KEY (studentID) REFERENCES STUDENT(studentID),
  studentDegree VARCHAR(50) NOT  NULL PRIMARY KEY,
  dateEnrolled DATETIME,
  dateGraduated DATETIME
);

CREATE TABLE MENTOR_STUDENT_DATE(
  mentorEmail VARCHAR(100), FOREIGN KEY (mentorEmail) REFERENCES MENTOR(mentorEmail),
  studentID INT, FOREIGN KEY (studentID) REFERENCES STUDENT(studentID),
  startDate DATETIME,
  endDate DATETIME
);
