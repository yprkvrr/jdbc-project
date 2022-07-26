select * from EMPLOYEES;
/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
*/

create table scrumteam(
    employeeId INTEGER PRIMARY KEY ,
    firstname varchar(30)not null ,
    jobTitle varchar(20)not null ,
    age INTEGER,
    salary INTEGER

);

select * from scrumteam;

/*
 INSERT
INTO tableName (column1, column2,...)
 VALUES (value1, value2 ... );
 */

 INSERT INTO scrumteam (employeeId, firstname, jobTitle, age, salary) values
(1,'Mike','Tester',25,120000);
INSERT INTO scrumteam (employeeId, firstname, jobTitle, age, salary) values
    (2,'John','Tester',27,130000);

INSERT INTO scrumteam (employeeId, firstname, jobTitle) values
    (3,'Dembe','Developer');

INSERT INTO scrumteam  values
    (4,'Alina','Developer',35,20000);

select * from scrumteam;
/*UPDATE table_name
SET column1 = value1,
    column2 = value2 , ...
    WHERE condition;

 */

UPDATE scrumteam
set salary=salary + 5000 ;

UPDATE scrumteam
set salary=salary + 5000 where jobTitle='Tester';

update scrumteam
set age=20 where firstname='Dembe';

select * from scrumteam;

/*DELETE FROM table_name
WHERE condition;

 */
delete from scrumteam where firstname='Dembe';
commit;

ALTER table scrumteam
add gender varchar(20);

update scrumteam set gender='male';
update scrumteam set gender='female' where firstname='Alina';
select * from scrumteam;

--RENAME THE column
alter table scrumteam
rename column salary to annual_salary;

alter table scrumteam
drop column gender;

alter table  scrumteam
rename to agileTeam;

select * from agileTeam;
TRUNCATE TABLE agileTeam;
DROP table agileTeam;
--Truncate will delete all table contents
--Drop deletes table itself with data

commit ; -- to save changes
