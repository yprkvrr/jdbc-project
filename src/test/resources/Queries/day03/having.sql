select * from EMPLOYEES;

select JOB_ID,avg(SALARY),count(*) from EMPLOYEES group by JOB_ID
having avg(SALARY)>5000 order by avg(SALARY);

select DEPARTMENT_ID,count(*) from EMPLOYEES group by DEPARTMENT_ID having DEPARTMENT_ID>5 ;

select FIRST_NAME,count(*)from EMPLOYEES
group by FIRST_NAME having count(*)>1;
