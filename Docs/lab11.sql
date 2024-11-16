SELECT * FROM courses; --Selects and displays all rows from the courses table

SELECT * FROM assignments --Selects and displays all rows from the assignments table with an ID from 1-10
LIMIT 10;

SELECT count(*) FROM courses; --Selects and displays the number of total rows from the courses table

SELECT min(due_date) FROM assignments; --Selects and displays the row with the soonest due date from the assignments table

SELECT *
FROM courses
WHERE course_name LIKE 'Intro%'; --Selects and displays all the rows from the courses table where the name starts with "Intro..."

SELECT *
FROM assignments
WHERE status != 'Completed'
ORDER BY due_date;           --Selects and displays all the rows from the assignments table that are not "Completed" and ordered from soonest to latest due date

SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'
    AND course_id LIKE 'COMM%'
    AND due_date < '2024-12-31'
ORDER BY due_date;          --Selects and displays the rows from the assignments table structured by; course id, title, status, and due date - where the status is not "Completed",
                            --the course id starts with "COMM...", the due date is before 2024-12-31, and ordered by the sonnest due date to the latest due date

-- EXERCISE QUESTIONS

-- 1.

SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234'; --Selects and displays the title and due_date of assignments for the course COMP1234

-- 2.

SELECT min(due_date)
FROM assignments;     --Selects and displays the earliest assignment due date in the assignments table

-- 3.

SELECT max(due_date)
FROM assignments;     --Selects and displays the latest assignment due date in the assignments table

-- 4.

SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';  --Selects and displays the title and course id of assignments due on 2024-10-08

-- 5.

SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';  --Selects and displays the title and due date of assignments due in October 2024

-- 6.

SELECT title, max(due_date)
FROM assignments
WHERE status = 'Completed';   --Selects and displays the most recent due date of assignments with a status of "Completed"