--Ejercicios
--5 b
SELECT
    e.employee_id,
    e.last_name,
    e.job_id,
    e.hire_date "STARTDATE"
FROM
    employees e;
--6

SELECT DISTINCT
    job_id
FROM
    employees;
--7

SELECT
    e.employee_id "Emp #",
    e.last_name "Employee",
    e.job_id "Job",
    e.hire_date "Hire Date"
FROM
    employees e;
--8

SELECT
    last_name
    || ', '
    || job_id
FROM
    employees;
--9

DESC employees;

SELECT employee_id||','|| first_name||','|| last_name||','|| email|| ','|| phone_number
       ||','|| hire_date|| ','|| job_id|| ','|| salary||','|| commission_pct
       ||','|| manager_id|| ','|| department_id THE_OUTPUT
FROM employees
