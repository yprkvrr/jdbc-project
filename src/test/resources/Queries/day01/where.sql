select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES
where FIRST_NAME='David' and LAST_NAME='Lee';


select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES
where FIRST_NAME='David';

select * from EMPLOYEES where SALARY>6000;

select  FIRST_NAME,SALARY from EMPLOYEES
where SALARY>6000 and DEPARTMENT_ID=80;

select FIRST_NAME,SALARY from EMPLOYEES
where SALARY>=3000 and SALARY<=6000;

select FIRST_NAME,SALARY from EMPLOYEES
where SALARY between 3000 and 6000;

 select * from EMPLOYEES where JOB_ID='IT_PROG' or JOB_ID='SA_REP';

select * from EMPLOYEES
where JOB_ID IN('IT_PROG','SA_REP');
--In clauses work like or logic

select * from EMPLOYEES
where JOB_ID NOT IN ('IT_PROG','SA_REP','FI_MGR');

select * from LOCATIONS where CITY IN('Rome','Tokyo');

select * from EMPLOYEES where EMPLOYEE_ID IN(113,145,124,122);

select * from EMPLOYEES where DEPARTMENT_ID IS NULL;

select * from EMPLOYEES where DEPARTMENT_ID IS NOT NULL;


select * from EMPLOYEES order by SALARY;
select * from EMPLOYEES order by SALARY desc ;
select * from EMPLOYEES where FIRST_NAME like 'A%';



