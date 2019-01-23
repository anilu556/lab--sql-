INSERT INTO ADVISOR (advisorID, email, lastName, firstName) VALUES
(2001, "John.Doe@hu.edu", "Doe", "John"),
(2002, "Alice.Wonderland@hu.edu", "Alice", "Wonderland"),
(2003, "Bob.Dylan@hu.edu", "Bob", "Dylan")
;

INSERT INTO STUDENT (studentID, email, lastName, firstName, dormPhone, dormName, dormRoom) VALUES
(2001, "John.Bob@students.hu.edu", "Bob", "John", "516-555-5655", "Whitman", 1),
(2002, "Ryan.King@students.hu.edu", "King", "Ryan","516-555-5655", "Whitman", 1),
(2003, "Michael.Shawn@students.hu.edu", "Shawn", "Michael", "516-555-5655", "Whitman", 1),
(2004, "Troy.Bell@hu.edu", "Bell", "Troy", "718-525-1615", "Hale", 1),
(2005, "Nickel.Sauce@hu.edu", "Sauce", "Nickel", "718-525-1615", "Hale", 1),
(2006, "Drake.Taco@hu.edu", "Taco", "Drake", "516-555-5655", "Whitman", 1)
;

INSERT INTO ALUMNI (alumniEmail, lastName, firstName, formerStudentID) VALUES
('Anthony.Jaghab@somewhere.com', 'Jaghab', 'Anthony', 1001),
('Jupraj.Singh@somewhere.com', 'Singh', 'Jupraj', 1002),
('Andre.King@somewhere.com', 'King', 'Andre', 1003)
;

INSERT INTO COMPANY (companyPhone, companyName, companyAdress, companyCity, companyState, companyZIP) VALUES
('516-111-1112', 'Richard Allen', '400 Forest Ave', 'West Hempstead', 'NY', 11552),
('516-111-1113', 'Coca Cola', '321 Hamburger Ave', 'West Hempstead', 'NY', 11552),
('516-111-1114', 'Pepsi', '21 West Valley Ave', 'West Hempstead', 'NY', 11552)
;

INSERT INTO MENTOR (mentorEmail, lastName, firstName, alumniEmail, companyPhone) VALUES
('Andre.King@companyname.com', 'King', 'Andre', 'Andre.King@somewhere.com', '516-111-1112'),
('Michael.Junior@companyname.com', 'Junior', 'Michael', NULL, '516-111-1114'),
('Connor.Junior@companyname.com', 'Junior', 'Connor', NULL, '516-111-1113')
;

INSERT INTO ADVISOR_STUDENT_DATE (advisorID, studentID, startDate, endDate) VALUES
(2001, 2002, '1996-01-01', '1998-01-01'),
(2002, 2001, '2000-01-01', NULL),
(2003, 2003, '2000-01-01', NULL)
;

INSERT INTO DEPARTMENT (advisorID, departmentName, officeBuildingName, OfficeRoom, OfficePhone) VALUES
(2001, 'Art', 'Hale', 1, '631-444-5551'),
(2002, 'Computer Systems', 'Hale', 1, '631-243-3552'),
(2003, 'Arts', 'Media', 1, '631-144-1533')
;

INSERT INTO ALUMNI_HOME (alumniEmail, homeAddress, homeCity, homeState, homeZip, homePhone) VALUES
('Anthony.Jaghab@somewhere.com', '414 Hunt Place', 'West Hempstead', 'NY', 11552, '516-555-5551'),
('Jupraj.Singh@somewhere.com', '201 Valley Place',  'West Hempstead', 'NY', 11552, '516-555-5552'),
('Andre.King@somewhere.com', '204 Strong Place',  'West Hempstead', 'NY', 11552, '516-555-5553')
;

INSERT INTO ADVISOR_MENTOR_DATE (advisorID, mentorEmail, startDate, endDate) VALUES
(2001, 'Andre.King@companyname.com', '1996-01-01', NULL),
(2002, 'Andre.King@companyname.com', '2000-01-01', NULL),
(2003, 'Andre.King@companyname.com', '2000-01-01', NULL)
;

INSERT INTO GRADUATION (studentID, studentDegree, dateEnrolled, dateGraduated) VALUES
(2001, 'B.A Arts', '2000-01-01', NULL),
(2002, 'B.A Comp. Programming', '2000-01-01', NULL),
(2003, 'B.A Media', '2000-01-01', NULL)
;

INSERT INTO MENTOR_STUDENT_DATE (mentorEmail, studentID, startDate, endDate) VALUES
('Andre.King@companyname.com', 2001, '2000-01-01', NULL),
('Andre.King@companyname.com', 2002, '2001-01-01', NULL),
('Andre.King@companyname.com', 2003, '2002-01-01', NULL)
;
