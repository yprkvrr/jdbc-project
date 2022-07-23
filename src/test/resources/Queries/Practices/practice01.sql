select * from EMPLOYEES;
select * from LOCATIONS;
-- 1. display full addresses from locations table in a single column
select STREET_ADDRESS||','||POSTAL_CODE||','||CITY||STATE_PROVINCE from LOCATIONS;
-- 2. display all informations of the employee who has the minimum salary
--in employees table
select * from EMPLOYEES where SALARY=(select min(SALARY)from EMPLOYEES) ;
-- 3. display the second minimum salary from the employees
SELECT * FROM EMPLOYEES
WHERE SALARY = (SELECT min(SALARY) FROM EMPLOYEES
WHERE SALARY > (SELECT min(SALARY) FROM EMPLOYEES));
-- 4. display all informations of the employee who has the second minimum
--salary
SELECT * FROM EMPLOYEES
WHERE SALARY = (SELECT min(SALARY) FROM EMPLOYEES
 WHERE SALARY > (SELECT min(SALARY) FROM EMPLOYEES));

-- 5. list all the employees who are making above the average salary;
select round(avg(SALARY))from EMPLOYEES;
select * from EMPLOYEES where SALARY>(select avg(SALARY)from EMPLOYEES);

-- 6. list all the employees who are making less than the average salary
select * from EMPLOYEES where SALARY<(select avg(SALARY)from EMPLOYEES);
-- 7. display manager name of 'Neena'
select * from EMPLOYEES where FIRST_NAME='Neena';
select first_name,last_name
from employees
where employee_id in (  select manager_id
                        from employees
                        where first_name = 'Neena') ;
-- 8. find the 3rd maximum salary from the employees table (do not include
--duplicates)
select * from EMPLOYEES order by SALARY desc ;
select * from employees
where salary=(select min(salary) from (select distinct SALARY from EMPLOYEES order by salary desc )
where ROWNUM<4 );
select min(salary) from (select distinct salary from employees
                         order by salary desc)
where rownum < 4;
-- 9. find the 5th maximum salary from the employees table (do not include
--duplicates)
select * from EMPLOYEES where SALARY=(select min(SALARY)from
(select distinct SALARY from EMPLOYEES order by SALARY desc )where ROWNUM<6 );
select min(salary) from (select distinct salary from employees
                         order by salary
                                 desc)
where rownum < 6;
-- 10. find the 7th maximum salary from the employees table (do not
--include duplicates)

select * from EMPLOYEES where SALARY=(select min(SALARY)from
    (select distinct SALARY from EMPLOYEES order by SALARY desc )where ROWNUM<8 );

select min(salary) from (select distinct salary from employees
                         order by salary desc)
where rownum < 8;
-- 11. find the 10th maximum salary from the employees table (do not
--include duplicates)
select * from EMPLOYEES where SALARY=(select min(SALARY)from
    (select distinct SALARY from EMPLOYEES order by SALARY desc )where ROWNUM<11 );

select min(salary) from (select distinct salary from employees
                         order by salary  desc)
where rownum < 11;
-- 12. find the 3rd minimum salary from the employees table (do not
--include duplicates)
select max(SALARY)from (select distinct SALARY from EMPLOYEES order by SALARY )where ROWNUM<4;
-- 13. find the 5th minimum salary from the employees table (do not
--include duplicates)
select * from EMPLOYEES order by SALARY desc ;

select max(SALARY)from (select distinct SALARY from EMPLOYEES order by SALARY)where ROWNUM<6;
-- 14. find the 7th maximum salary from the employees table (do not
--include duplicates)
select min(SALARY)from (select distinct  SALARY from EMPLOYEES order by SALARY desc )where ROWNUM<8;
-- 15. find the 10th maximum salary from the employees table (do not
--include duplicates)
select min(SALARY)from (select distinct SALARY from EMPLOYEES order by SALARY desc )where ROWNUM<11;

create view EmployeeInfo as select LAST_NAME||' '||FIRST_NAME as FullName from EMPLOYEES;
 select LAST_NAME||' '||FIRST_NAME as FullName,lower(email||'@cybertek.com') as Email from EMPLOYEES;
select * from EMPLOYEEINFO;

select min(SALARY)from(select distinct SALARY from EMPLOYEES order by SALARY desc )where ROWNUM<4;
select max(SALARY)from(select distinct SALARY from EMPLOYEES order by SALARY)where ROWNUM<4;
