select * from EMPLOYEES;

create view EmployeesInfos as
select substr(FIRST_NAME,1,1)||'.'||substr(LAST_NAME,1,1)||'.'as initials,FIRST_NAME
||' makes '||SALARY as Emloyees_salary from EMPLOYEES;




select * from EMPLOYEESINFOS;

