-- Show all students ordered by last name in ascendent way.
SELECT * FROM STUDENT
ORDER BY lastName ASC;

-- Write a query to list all the students living in the Whitman dorm.
SELECT * FROM STUDENT
WHERE dormName = 'Whitman';

-- Write a query to list the number of students assigned to each faculty advisor.
SELECT CONCAT(A.firstName, " ", A.lastName) AS 'Faculty Advisor',
COUNT(S.studentID) AS '# of Students' FROM ADVISOR A
INNER JOIN ADVISOR_STUDENT_DATE ASD
ON A.advisorID = ASD.advisorID
INNER JOIN STUDENT S
ON ASD.studentID = S.studentID
GROUP BY A.advisorID;

-- Write a query to list first name, last name, and email, and company name of the alumni working as a mentor in the university.
SELECT CONCAT(M.firstName, ' ', M.lastName) AS 'Alumni Working as a Mentor',
A.alumniEmail AS 'Alumni Email',
M.mentorEmail AS 'Mentor Email',
C.CompanyName AS 'Company Name'
FROM ALUMNI A
INNER JOIN MENTOR M
ON A.alumniEmail = M.alumniEmail
INNER JOIN COMPANY C
ON M.CompanyPhone = C.CompanyPhone;
