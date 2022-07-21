select * from EMPLOYEES;

--  Display all information  where job title President ,Sales Manager, Finance manager
select * from JOBS where JOB_TITLE in ('President','Sales Manager','Finance manager');

-- Display all Department that does not have manager_id in departments table
select * from DEPARTMENTS where MANAGER_ID is null ;

--  Display all Locations in US or UK from Locations table
select * from LOCATIONS where COUNTRY_ID ='US'or COUNTRY_ID='UK';

--  Display all Locations except US or UK from Locations table
select * from LOCATIONS where COUNTRY_ID not in ('US','UK');

--  Display all Countries where Region_ID is 1 and Country_Name not Belgium
SELECT * FROM COUNTRIES WHERE REGION_ID=1 AND COUNTRY_NAME !='Belgium';

SELECT * FROM COUNTRIES WHERE REGION_ID=1 AND COUNTRY_NAME <>'Belgium'; --<> same with !=

