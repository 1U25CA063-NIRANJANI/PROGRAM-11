use collegeDBbca;
CREATE TABLE department1(
	departmentID INT PRIMARY KEY,
    departmentName varchar(50)
);
CREATE TABLE student1(
	studentID INT PRIMARY KEY,
    studentName VARCHAR (20),
    departmentID INT 
);
CREATE TABLE course1(
	courseID INT PRIMARY KEY,
    courseName VARCHAR(10)
);
CREATE TABLE enrollment1(
	enrollmentID INT PRIMARY KEY,
    studentID INT,
    courseID INT 
);
INSERT INTO department1(departmentID,departmentName)VALUES(101,'Computer Science');
INSERT INTO department1(departmentID,departmentName)VALUES(102,'Biotechnology');
INSERT INTO student1(studentID,studentName,departmentID)VALUES(1001,'chandru',101);
INSERT INTO student1(studentID,studentName,departmentID)VALUES(1002,'priyanka',102);
INSERT INTO student1(studentID,studentName,departmentID)VALUES(1003,'chandramohan',101);
INSERT INTO course1(courseID,courseName)VALUES(201,'Database Structures');
INSERT INTO course1(courseID,courseName)VALUES(202,'Data Structures');
INSERT INTO course1(courseID,courseName)VALUES(203,'Web Development');
INSERT INTO enrollment1(enrollmentID,studentID,departmentID)VALUES(1,1001,201);
INSERT INTO enrollment1(enrollmentID,studentID,departmentID)VALUES(2,1001,202);
INSERT INTO enrollment1(enrollmentID,studentID,departmentID)VALUES(3,1002,203);
INSERT INTO enrollment1(enrollmentID,studentID,departmentID)VALUES(4,1003,201);
CREATE VIEW StudentDetails AS
SELECT 
    S.StudentName,
    C.CourseName,
    D.DepartmentName
FROM Student S
JOIN Enrollment E
    ON S.StudentID = E.StudentID
JOIN Course C
    ON E.CourseID = C.CourseID
JOIN Department D
    ON S.DepartmentID = D.DepartmentID;
SELECT * FROM StudentDetails;
