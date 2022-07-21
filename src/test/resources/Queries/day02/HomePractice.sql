
select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES;
-- 2. How many employees have salary less than 5000?
select count(*) from EMPLOYEES where SALARY<5000;
-- 3. How many employees have salary between 6000 and 7000?
select count(*)from EMPLOYEES where SALARY between 6000 and 7000;
-- 4. List all the different region_ids in countries table
select distinct REGION_ID from COUNTRIES;
-- 5. display the salary of the employee Grant Douglas (lastName: Grant,
--firstName: Douglas)
select SALARY from EMPLOYEES where LAST_NAME='Grant' and FIRST_NAME='Douglas';
-- 6. display all department information from departments table
select * from DEPARTMENTS where DEPARTMENT_NAME in('IT' , 'Public Relations' , 'Sales' , 'Executive');
-- 7. display the maximum salary in employees table
select max(SALARY) from EMPLOYEES;
-- 8. display the the minimum salary in employees table
select min(SALARY)from EMPLOYEES;
-- 9. display the average salary of the employees;
select round(avg(SALARY))from EMPLOYEES;
-- 10. count the total numbers of the departments in departs table
select count(DEPARTMENT_NAME)from  DEPARTMENTS;
-- 11. sort the start_date in ascending order in job_history's table
select * from JOB_HISTORY order by START_DATE;
-- 12. sort the start_date in descending order in job_history's table
select * from JOB_HISTORY order by START_DATE desc ;
-- 13. display all records whose last name contains 2 lowercase 'a's
select * from EMPLOYEES where LAST_NAME like '%aa%';
-- 14. display all the employees whose first name starts with 'A'
select * from EMPLOYEES where FIRST_NAME like 'A%';
-- 15. display all the employees whose job_ID contains 'IT'
select * from EMPLOYEES where JOB_ID like '%IT%';
-- 16. display all  unique job_id that end with CLERK in employee table
select distinct JOB_ID from EMPLOYEES where JOB_ID like '%CLERK';
-- 17.display all  employees first name starts with A and have exactly 4 characters
--Total
select FIRST_NAME from EMPLOYEES where FIRST_NAME like ('A___');
-- 18. display all the employees whose department id in 50, 80, 100
select * from EMPLOYEES where DEPARTMENT_ID in('50','80','100');
-- 19. display all employees who does not work in any one of these department id
--90, 60,  100, 130, 120
select * from EMPLOYEES where DEPARTMENT_ID not in('90', '60',  '100', '130', '120');
-- 20. divide employees into groups by using thier job id
select distinct JOB_ID from EMPLOYEES group by JOB_ID;
-- 1 display the maximum salaries in each groups
select JOB_ID ,max(SALARY)from EMPLOYEES group by JOB_ID;
-- 2 display the minium salaries in each groups
select JOB_ID,min(SALARY)from EMPLOYEES group by JOB_ID;
-- 3 display the average salary of each group
select JOB_ID,round(avg(SALARY))from EMPLOYEES group by JOB_ID;
-- 4 how many employees are there in each group that have minimum
--salary of 5000 ?

-- 5 display the total budgests of each groups
select JOB_ID,sum(SALARY)from EMPLOYEES group by JOB_ID;
-- 21. display all job_id and average salary who work as any of these jobs IT_PROG,
--SA_REP, FI_ACCOUNT, AD_VP
select JOB_ID,avg(SALARY)from
 EMPLOYEES where JOB_ID in('IT_PROG','SA_REP','FI_ACCOUNT','AD_VP')group by JOB_ID;
-- 22.display max salary  for each department
select JOB_ID,max(SALARY)from EMPLOYEES group by JOB_ID;
-- 23. display total salary for each department except department_id 50, and where
--total salary >30000

select JOB_ID,sum(SALARY)from EMPLOYEES where
DEPARTMENT_ID not in '50'group by JOB_ID having sum(SALARY)>30000;


-- get me how many departments we have in each location
select LOCATION_ID, count(*)from DEPARTMENTS group by LOCATION_ID;

-- get me how many locations we have in each country
select COUNTRY_ID ,count(*)  from LOCATIONS group by COUNTRY_ID order by 2;


-- get me how many countries we have in each region
select REGION_ID,count(*) from COUNTRIES group by REGION_ID ;

-- get me how many employees working for each manager
select MANAGER_ID,count(*) from EMPLOYEES
where MANAGER_ID is not null
group by MANAGER_ID having count(*)>5 order by 2;
