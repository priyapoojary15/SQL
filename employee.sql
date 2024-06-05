1.	display all employees details
select* from employees;
2.	display all employees who are sales rep
select * from employees where jobTitle='Sales Rep';
3.	select first and last name of those who are reporting to 1102
select firstName, lastName from employees where reportsTo ='1102';
4.	display first and last name of VP sales
select firstName, lastName from employees where jobTitle ='VP Sales';
5.	display designation of 1143
select * from employees where employeeNumber='1143';
6.	display las name firstname of those who are working oofice no 1’
select firstName, lastName from employees where officeCode=’1’;

7.	display last name of those who are working in office 1 and report to 1143
select lastname from employees where officecode=’1’ and reports to=’1143’;
8.	display employess details of those employees who are working in either 1 or 6
select * from employees where officeCode='1' or officeCode='6';
9.	display employees who are pporting to 1102
select * from employees where not  reportsTo ='1102';
SELECT * FROM employees WHERE reportsTo != '1102'; 
10.	display details of all employees whose first name is starting with ‘l’
select * from employees where firstName like 'L%';
11.	display all those employees details whose first name ending with ‘e’
select * from employees where firstname like ‘%L’;
12.	display all employees whose last name start with ‘T’ and working as sales rep
select * from employees where lastname like ‘T%’ and jobTitle=’Sales Rep’;
13.	display all employees first name is only 4 character long
select * from employees where firstName like ‘____’;
14.	display all employees fitrst name is 5 charcater long and end with y
select * from employees where firstName like ‘____y’;
15.	select distinct product line from product
SELECT DISTINCT product_line FROM products;
16.	display all the product which are present in motorcycle category
SELECT *FROM products WHERE category = 'motorcycle';
17.	create total amount column 
select productCode, quantityOrdered*priceEach "TotalAmount" from orderdetails where productCode="S18_1749" and orderNumber='10100';
18.	display all the product code whose unit price range between 100&200
select productCode from orderdetails where priceEach between 100 and 200;
select productCode from orderdetails where pricrEach >=100 and priceeach<=200;
19.	display number of customer living in France
select count(*) from customers where country='France';
20.	display number of customer whose first name start with ‘a’
select count(*) from customers where customerName like 'A%';
21.	display total amount which has been recived payment so far
select sum(amount) from payments;
22.	display all those check no where return amount is more than 30k
SELECT checkNumber from payments where amount>=30000;
23.	display the highest amount recived so far from payment
select max(amount) from payments;
24.	display the maximum amount received as payment between 10dec2003 to 26 dec 2004
select max(amount) from payments where paymentDate>='2003-12-10' & '2004-10-26';
25.	display no of customer living in each country
select count(*) from customers group by country;
26.	create product line wise report to display avg quantity in stock
SELECT productLine, AVG(quantityInStock) as averageQuantity
    -> FROM products
    -> GROUP BY productLine;
27.	create a productline wise report to display num of products available in each productline
SELECT productLine, COUNT(*) as productCount
    -> FROM products
    -> GROUP BY productLine;
28.	create a productline wise report where num of products greater than 20
select productLine, count(*) from products group by productLine having count(*)>20;
29.	create ordernum wise report which display total quantity ordered in eachoder
SELECT orderNumber, SUM(quantityOrdered * priceEach) AS TotalOrderAmount from orderdetails group by orderNumber;
30.	display avg no of employees working in each office
select avg(employeeNumber) from employees group by officeCode;
31.	display firstname and lastname of employees working in each office
select officeCode,firstName,lastName from employees order by officeCode, lastName, firstName;
32.	display productline and max productname of each productline where productline is in desc order
SELECT productLine, MAX(productName) as maxProductName
    -> FROM products
    -> GROUP BY productLine
    -> ORDER BY productLine DESC;
33.	display employee name first and last together by each officecode
select officeCode,concat(firstName," ",lastName)"employee_Name" from employees group by officeCode, concat(firstName," ",lastName) order by officeCode;
