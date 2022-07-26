--1. Display all first_name and department_name
select FIRST_NAME ,DEPARTMENT_NAME from EMPLOYEES E inner join DEPARTMENTS D
on E.DEPARTMENT_ID=D.DEPARTMENT_ID;

--2.Display all first_name and department_name including the  department without employee
select FIRST_NAME,DEPARTMENT_NAME from DEPARTMENTS D left join EMPLOYEES E
on E.DEPARTMENT_ID=D.DEPARTMENT_ID;
--3.Display all first_name and department_name including the  employee without department
select FIRST_NAME,DEPARTMENT_NAME from EMPLOYEES e left join DEPARTMENTS d
on e.DEPARTMENT_ID=d.DEPARTMENT_ID;
--4.Display all first_name and department_name
--including the  department without employee  and  employees  without departments

select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES E full join DEPARTMENTS D
     on E.DEPARTMENT_ID = D.DEPARTMENT_ID;

--5.Display All cities and related country names
select CITY,COUNTRY_NAME from COUNTRIES join LOCATIONS L on COUNTRIES.COUNTRY_ID = L.COUNTRY_ID
--6.Display All cities and related country names  including with countries without city
select CITY,COUNTRY_NAME from COUNTRIES left join LOCATIONS
on COUNTRIES.COUNTRY_ID=LOCATIONS.COUNTRY_ID;
--7.Display all department name and  street adresss
select DEPARTMENT_NAME,STREET_ADDRESS from DEPARTMENTS inner join LOCATIONS
on DEPARTMENTS.LOCATION_ID=LOCATIONS.LOCATION_ID;
--8.Display first_name,last_name and department_name,city for all employees
select FIRST_NAME,LAST_NAME, DEPARTMENT_NAME ,CITY from EMPLOYEES e
inner join DEPARTMENTS d on e.DEPARTMENT_ID=d.DEPARTMENT_ID inner join
    LOCATIONS l on d.LOCATION_ID=l.LOCATION_ID;

--9.Display first_name,last_name and department_name,city,country_name for all employees
select FIRST_NAME,LAST_NAME, DEPARTMENT_NAME ,CITY from EMPLOYEES e
 inner join DEPARTMENTS d on e.DEPARTMENT_ID=d.DEPARTMENT_ID inner join
  LOCATIONS l on d.LOCATION_ID=l.LOCATION_ID inner join COUNTRIES c
      on l.COUNTRY_ID=c.COUNTRY_ID;

--10.Display first_name,last_name and department_name,city who is living in United Kingdom

select FIRST_NAME,LAST_NAME, DEPARTMENT_NAME ,CITY from EMPLOYEES e
  inner join DEPARTMENTS d on e.DEPARTMENT_ID=d.DEPARTMENT_ID inner join
LOCATIONS l on d.LOCATION_ID=l.LOCATION_ID inner join COUNTRIES c
    on l.COUNTRY_ID=c.COUNTRY_ID where COUNTRY_NAME='United Kingdom';
--11.Display how many employee we have for each country name
select COUNTRY_NAME,count(*) from EMPLOYEES e
 inner join DEPARTMENTS d on e.DEPARTMENT_ID=d.DEPARTMENT_ID inner join
  LOCATIONS l on d.LOCATION_ID=l.LOCATION_ID inner join COUNTRIES c
 on l.COUNTRY_ID=c.COUNTRY_ID group by COUNTRY_NAME;


select * from LOCATIONS;
