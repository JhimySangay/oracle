SELECT
    *
FROM
    DEPARTMENTS D
    INNER JOIN EMPLOYEES E ON D.DEPARTMENT_ID = E.DEPARTMENT_ID;
--Hola Mundo m

SELECT
    LAST_NAME,
    SALARY
FROM
    EMPLOYEES
WHERE
    SALARY > 10000;

SET SERVEROUTPUT ON

BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello World');
END;

CREATE OR REPLACE PROCEDURE ADD_JOB(
p_jobid jobs.job_id%TYPE,
p_jobtitle jobs.job_title%TYPE) IS
BEGIN
INSERT INTO JOBS (JOB_ID,JOB_TITLE)
 values (p_jobid,p_jobtitle);
 COMMIT;
END;

EXECUTE ADD_JOB('IT_DBA','Database Administrator');

SELECT * FROM JOBS WHERE JOB_ID='IT_DBA';

EXECUTE ADD_JOB('ST_MAN','Stock Manager');

CREATE OR REPLACE PROCEDURE upd_job(
    p_job_id IN jobs.job_id%TYPE,
    p_jobtitle IN jobs.job_title%TYPE)
IS
BEGIN
    UPDATE JOBS
    SET  JOB_title= p_jobtitle
    WHERE JOB_ID= p_job_id;
    IF SQL%NOTFOUND THEN
          RAISE_APPLICATION_ERROR(-20000, 'No job update.');
        END IF;
END upd_job;

EXECUTE 

