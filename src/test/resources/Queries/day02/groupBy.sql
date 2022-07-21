select * from EMPLOYEES;

select avg(SALARY)from EMPLOYEES where JOB_ID='IT_PROG';

select avg(SALARY)from EMPLOYEES where JOB_ID='SA_REP';

select avg(SALARY)from EMPLOYEES where JOB_ID='MK_MAN';

select distinct JOB_ID from EMPLOYEES;

select  count(distinct JOB_ID)from EMPLOYEES;

select round(avg(SALARY)),min(SALARY),sum(SALARY),max(SALARY)from EMPLOYEES;

select JOB_ID,avg(SALARY) from EMPLOYEES group by JOB_ID;

select JOB_ID,round(avg(SALARY)),min(SALARY),sum(SALARY),max(SALARY),count(*)
from EMPLOYEES group by JOB_ID;


select JOB_ID ,sum(SALARY)from EMPLOYEES group by JOB_ID;

select DEPARTMENT_ID ,sum(SALARY)from EMPLOYEES
where DEPARTMENT_ID is not null group by DEPARTMENT_ID order by DEPARTMENT_ID;


