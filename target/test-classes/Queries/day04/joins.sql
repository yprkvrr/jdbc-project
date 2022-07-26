select * from EMPLOYEES;

select * from CUSTOMER;
select * from ADDRESS;

select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from CUSTOMER inner join ADDRESS on
    CUSTOMER.ADDRESS_ID=ADDRESS.ADDRESS_ID;
select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from CUSTOMER C inner join ADDRESS A on
        C.ADDRESS_ID=A.ADDRESS_ID;


/*
 left outer join
 */


select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from CUSTOMER C left outer join ADDRESS A on
        C.ADDRESS_ID=A.ADDRESS_ID;
select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from CUSTOMER C right outer join ADDRESS A on
        C.ADDRESS_ID=A.ADDRESS_ID;
select FIRST_NAME, LAST_NAME, A.ADDRESS_ID, C.ADDRESS_ID, ADDRESS, PHONE
from ADDRESS A left join CUSTOMER C

 ON C.ADDRESS_ID=A.ADDRESS_ID;


select * from ADDRESS A full join CUSTOMER C on
 A.ADDRESS_ID=C.ADDRESS_ID;

/*
 LEFT OUTER WITH WHERE
 -- Get me only unique for left table
 NOTE --> If there is a customer with addressID 6 , since there is no matching data
 from address table it will assing NULL value for address table address_id
 That is why we are using WHERE with address.addrees_id IS NULL to get unique for LEFT table
 */

SELECT customer_id, first_name, last_name,customer.ADDRESS_ID,ADDRESS.ADDRESS_ID,phone
FROM customer LEFT OUTER JOIN address
                              ON customer.address_id = address.address_id
WHERE ADDRESS.ADDRESS_ID IS NULL;

SELECT customer_id, first_name, last_name,customer.ADDRESS_ID,ADDRESS.ADDRESS_ID,phone
FROM customer LEFT OUTER JOIN address
                              ON customer.address_id = address.address_id;
/*
 FULL OUTER WITH WHERE
 -- get non-matching part of the tables
 */

SELECT customer_id, first_name, last_name,customer.ADDRESS_ID,ADDRESS.ADDRESS_ID,phone
FROM customer FULL OUTER JOIN address
                              ON customer.address_id = address.address_id
WHERE ADDRESS.ADDRESS_ID IS NULL OR CUSTOMER.ADDRESS_ID IS NULL;
