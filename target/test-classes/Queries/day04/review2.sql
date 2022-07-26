select * from EMPLOYEES;

--find the 3th maximum salary from the employees table (do not include duplicates)
select min(SALARY)from(select distinct SALARY from EMPLOYEES order by SALARY desc )where ROWNUM<4;
select * from EMPLOYEES where SALARY=(select min(SALARY)from(select distinct SALARY
 from EMPLOYEES order by SALARY desc )where ROWNUM<4);

--find the 3rd minimum salary from the employees table (do not  include duplicates)
select max(SALARY)from(select distinct SALARY from EMPLOYEES order by SALARY)where ROWNUM<4;

select * from EMPLOYEES where SALARY=(select max(SALARY)from(select distinct SALARY
from EMPLOYEES order by SALARY )where ROWNUM<4);
