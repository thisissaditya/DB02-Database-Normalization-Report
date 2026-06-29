CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100)
);

CREATE TABLE Instructors (
    instructor_id VARCHAR(10) PRIMARY KEY,
    instructor_name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE Courses (
    course_id VARCHAR(10) PRIMARY KEY,
    course_name VARCHAR(100),
    instructor_id VARCHAR(10),

    FOREIGN KEY (instructor_id)
    REFERENCES Instructors(instructor_id)
);

CREATE TABLE Enrollments (
    enrollment_id VARCHAR(10) PRIMARY KEY,
    student_id INT,
    course_id VARCHAR(10),

    FOREIGN KEY (student_id)
    REFERENCES Students(student_id),

    FOREIGN KEY (course_id)
    REFERENCES Courses(course_id)
);
