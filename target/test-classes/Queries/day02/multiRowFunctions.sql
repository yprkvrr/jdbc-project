select * from LOCATIONS;

select count(*) from DEPARTMENTS;

select count(distinct FIRST_NAME)from EMPLOYEES;

select distinct FIRST_NAME from EMPLOYEES;



select count(*) from EMPLOYEES where JOB_ID in ('IT_PROG','SA_REP');

select count(*) from EMPLOYEES where DEPARTMENT_ID is null ;

select * from EMPLOYEES where DEPARTMENT_ID is null ;


select count(DEPARTMENT_ID) from EMPLOYEES where DEPARTMENT_ID is not null ;

select count(*) from EMPLOYEES where DEPARTMENT_ID is not null ;
--MAX , MIN
select max(SALARY)  from EMPLOYEES;

select min(SALARY)from EMPLOYEES;


--SUM

select sum(SALARY)from EMPLOYEES;

--AVG

select avg(SALARY)from EMPLOYEES;

--Round
select round(avg(SALARY))from EMPLOYEES;

select round(avg(SALARY),1)from EMPLOYEES;   --if you want to add numbers from comma
select round(avg(SALARY),2)from EMPLOYEES;
select round(avg(SALARY),3)from EMPLOYEES;
