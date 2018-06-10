--Ejercicios
--Lesson 2
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
FROM employees;


--Lesson 3

--1
SELECT LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY >12000;
--2
SELECT LAST_NAME, DEPARTMENT_ID 
FROM EMPLOYEES
WHERE EMPLOYEE_ID = 176;
--3
SELECT LAST_NAME, SALARY 
FROM EMPLOYEES
WHERE SALARY NOT BETWEEN 5000 AND 12000;
--4
SELECT LAST_NAME,FIRST_NAME, JOB_ID, HIRE_DATE 
FROM EMPLOYEES
WHERE LAST_NAME IN ('Matos','Taylor')
order by HIRE_DATE;
--5 
SELECT LAST_NAME,DEPARTMENT_ID 
FROM EMPLOYEES
WHERE DEPARTMENT_ID IN (20,50)
ORDER BY LAST_NAME ASC;
--6
SELECT LASt_NAME "Employee", SALARY "Monthly Salary"
from employees
where salary between 5000 and 12000
and department_id IN (20,50);
--7
SELECT LAST_NAME,TO_CHAR(HIRE_DATE,'DD-MON-YY') 
FROM EMPLOYEES
--WHERE TO_CHAR(HIRE_DATE,'YYYY')='2006'
WHERE HIRE_DATE>='01-01-06' AND HIRE_DATE <'01-01-07';
;
--8
SELECT LAST_NAME, JOB_ID 
FROM EMPLOYEES
WHERE MANAGER_ID IS NULL;
--9
SELECT LAST_NAME, SALARY, COMMISSION_PCT
FROM EMPLOYEES
WHERE COMMISSION_PCT IS NOT NULL
ORDER BY 2 DESC, 3 DESC;
--10
SELECT LAST_NAME, SALARY 
FROM EMPLOYEES
WHERE SALARY >&P_SALARY;
--11
SELECT EMPLOYEE_ID,LAST_NAME,SALARY,DEPARTMENT_ID 
FROM EMPLOYEES
WHERE MANAGER_ID =&P_MANAGER
ORDER BY UPPER(&P_SORTER); 
--12
SELECT LAST_NAME 
FROM EMPLOYEES
WHERE LAST_NAME LIKE '__a%';
--13
SELECT LAST_NAME 
FROM EMPLOYEES
WHERE LAST_NAME LIKE '%a%' AND LAST_NAME LIKE '%e%';
--14
SELECT LAST_NAME,JOB_ID,SALARY
FROM EMPLOYEES
WHERE JOB_ID IN ('SA_REP','ST_CLERK') 
AND SALARY NOT IN (2500,3500,7000);
--15
SELECT LAST_NAME "Employee", SALARY "Monthly Salary",
COMMISSION_PCT 
from employees
where COMMISSION_PCT=.20;


--CHARTER 4
SELECT sysdate "Date" FROM dual
