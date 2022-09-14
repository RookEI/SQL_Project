use university;

SET GLOBAL sql_mode='';

SET GLOBAL FOREIGN_KEY_CHECKS=0;

INSERT INTO students(students_name, students_id)
VALUES('Freya', 1);
INSERT INTO students(students_name, students_id)
VALUES('Finn', 2);
INSERT INTO students(students_name, students_id)
VALUES('Courtney', 3);
INSERT INTO students(students_name, students_id)
VALUES('Damian', 4);
INSERT INTO students(students_name, students_id)
VALUES('Aramis', 5);
INSERT INTO students(students_name, students_id)
VALUES('Joe', 6);
INSERT INTO students(students_name, students_id)
VALUES('Key', 7);
INSERT INTO students(students_name, sutdents_id)
VALUES('Smith', 8);
INSERT INTO students(students_name, students_id)
VALUES('Bruce', 9);
INSERT INTO students(students_name, students_id)
VALUES('Clarke', 10);
INSERT INTO students(students_name, students_id)
VALUES('Megan', 11);
INSERT INTO students(students_name, students_id)
VALUES('Tom', 12);
INSERT INTO students(students_name, students_id)
VALUES('Thomas', 13);
INSERT INTO students(students_name, students_id)
VALUES('Ron', 14);
INSERT INTO students(students_name, students_id)
VALUES('Jack', 15);
INSERT INTO students(students_name, students_id)
VALUES('Moore', 16);
INSERT INTO students(students_name, students_id)
VALUES('Alex', 17);
INSERT INTO students(students_name, students_id)
VALUES('Jackson', 18);
INSERT INTO students(students_name, students_id)
VALUES('Tristan', 19);
INSERT INTO students(students_name, students_id)
VALUES('Poolee', 20);

SELECT *
FROM students;

INSERT INTO professors(professors_name, professors_grades, professors_students)
VALUES('Mr.Damascus', 1, 1);
INSERT INTO professors(professors_name, professors_grades, professors_students)
VALUES('Ms.Applebaum', 2, 2);
INSERT INTO professors(professors_name, professors_grades, professors_students)
VALUES('Mr.Diclimenti', 3, 3);
INSERT INTO professors(professors_name, professors_grades, professors_students)
VALUES('Ms.Chance', 4, 4);
INSERT INTO professors(professors_name, professors_grades, professors_students)
VALUES('Mr.Brown', 5, 5);

SELECT *
FROM professors;

INSERT INTO courses(courses_name, courses_id)
VALUES('Biology', 1);
INSERT INTO courses(courses_name, courses_id)
VALUES('Calculus', 2);
INSERT INTO courses(courses_name, courses_id)
VALUES('Elective', 3);
INSERT INTO courses(courses_name, courses_id)
VALUES('Geography', 4);
INSERT INTO courses(courses_name, courses_id)
VALUES('History', 5);
INSERT INTO courses(courses_name, courses_id)
VALUES('Science', 6);

SELECT *
FROM courses;

INSERT INTO grades(grades_number, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("100", 1, 1, 1);
INSERT INTO grades(grades_number, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("99", 2, 2, 2);
INSERT INTO grades(grades_number, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("95", 3, 3, 3);
INSERT INTO grades(grades_number, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("90", 4, 4, 4);
INSERT INTO grades(grades_number, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("85", 5, 5, 5);
INSERT INTO grades(grades_number, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("80", 5, 5, 5);
INSERT INTO grades(grades_number, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("75", 6, 6, 6);
INSERT INTO grades(grades_number, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("70", 7, 7, 7);
INSERT INTO grades(grades_number, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("65", 8, 8, 8);
INSERT INTO grades(grades_number, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("60", 9, 9, 9);
INSERT INTO grades(grades_number, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("55", 10, 10, 10);
INSERT INTO grades(grades_number, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("50", 11, 11, 11);
INSERT INTO grades(grades_number, grades_courses_id, grades_students_id, grades_professors_id)
VALUES("45", 12, 12, 12);

SELECT *
FROM grades;

-- This Query Is For The Average Grade given by each Professor --
SELECT professors_name, AVG(grades_number)
FROM grades g
JOIN professors p
ON g.grades_professors_id = p.professors_grades
GROUP BY professors_name;


-- This Query Is For The Top grades for each Student --
SELECT students_id, (grades_number)
FROM grades g
JOIN students s
ON g.grades_students_id = s.students_name
ORDER BY students_id DESC;

-- This Query Is to Group students by courses enrolled --
SELECT students_name, courses_name
FROM students s
JOIN courses c
ON s.students_id = c.courses_id
GROUP BY id;

-- This Query is to get a Summary report of courses and average grades --
SELECT c.courses_name, AVG(g.grades_number)
FROM grades g
JOIN courses c
ON g.grades_courses_id = c.courses_id
ORDER BY grades_percent ASC;

-- This Query is for the Student and professor common courses --
SELECT s.students_name, p.professors_name
FROM students s
JOIN professors p
ON s.students_id = p.professors_students_id
GROUP BY students_name;

SELECT * FROM students;
SELECT * FROM grades;
SELECT * FROM courses;
SELECT * FROM professors;

