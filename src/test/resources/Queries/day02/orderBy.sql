select * from EMPLOYEES;

select * from EMPLOYEES order by SALARY asc ;

select * from EMPLOYEES order by SALARY desc ;

select * from EMPLOYEES order by SALARY; --default ascending

select * from EMPLOYEES order by 8;

select EMAIL from EMPLOYEES order by 1;


select EMAIL,FIRST_NAME from EMPLOYEES order by 2;

select * from EMPLOYEES where EMPLOYEE_ID <120 order by FIRST_NAME ;

select * from EMPLOYEES order by FIRST_NAME,LAST_NAME desc ;

select * from EMPLOYEES order by FIRST_NAME,LAST_NAME ;



