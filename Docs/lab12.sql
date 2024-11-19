INSERT INTO assignments (course_id, title, status)
VALUES ('COMP1238', 'Assignment with no date', 'Not Started'); --Adds an assignment with no due date to the assignments table

SELECT * FROM assignments
LIMIT 10;           --Selects and displays all rows from the assignments table with an ID from 1-10

SELECT count(*) FROM courses;  --Selects and displays the number of total rows from the courses table

SELECT min(due_date) FROM assignments;  --Selects and displays the row with the soonest due date from the assignments table

SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';  --Selects and displays all the rows from the courses table where the name starts with "Intro..."

SELECT sqlite_version();   --Selects and displays the current version of the sqlite software

SELECT upper('ABCxyz');   --Selects and displays an uppercase sequence of the defined characters

SELECT length('abcde');   --Selects and displays the numerical length of the defined characters

SELECT 7*5;   --Selects and displays the product of 7 multiplied by 5

SELECT concat('ABC', '-', 'xyz');   --Selects and concatenates the defined strings in the specified format

SELECT date();   --Selects and displays the current date

SELECT strftime('%Y', due_date) AS Year, *
FROM assignments;           --Selects and displays the rows from the assignments table ordered by due date while adding a seperate column to specify the Year value

SELECT DISTINCT SUBSTRING(course_id, 1, 4) 
FROM courses;               --Selects and displays the rows from the courses table with unique course ID

SELECT DISTINCT SUBSTRING(course_id, 1, 4) AS prefix, count(*)
FROM courses
GROUP BY prefix;            --Selects and displays the unique course ID's from the courses table and how many times each one is repeated in the table

SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;          --Selects and displays the rows from the assignments table with the "Completed" status, while ordered from soonest to latest due date

SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;     --Selects and displays the rows in the assingments table with the "Completed" status, has a due date sooner than "2024-12-31",
                       --and is structured by; course ID, title, status, and due date

--EXERCISE QUESTIONS

-- 1.

SELECT concat(course_name, ' ', '-', ' ', semester) AS Courses
FROM courses;                   --Selects and displays all courses concatenated as "Course Name - Semester"

-- 2.

SELECT course_id, course_name, lab_time
from courses
WHERE lab_time LIKE 'Fri%';     --Selects and displays all courses that have a lab session scheduled on Friday

-- 3.

SELECT * FROM assignments
WHERE due_date > date();        --Selects and displays all assignments with a due date after the current date

-- 4.

SELECT SUBSTRING(status, 1, 15) AS prefix, count(*)
FROM assignments
GROUP BY prefix;                --Selects and displays the number of assignments for each status of "Not Started", "In Progress", and "Completed"

-- 5.

SELECT max(course_name)
FROM courses;                    --Selects and displays the course with the longest course name

-- 6.

SELECT upper(course_name)
FROM courses;                    --Selects and displays a list of all course names in uppercase

-- 7.

SELECT title, due_date
FROM assignments
WHERE due_date LIKE '%09%';      --Selects and displays the titles of all assignments in the assignments table that are due in September, regardless of the year

-- 8.

SELECT *
FROM assignments
WHERE due_date IS NULL;          --Selects and displays all assignments in the assigmnets table where the due_date is missing