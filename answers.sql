-- Get the first name, last name, email, office code, city, and phone number of all employees along with their office details.
SELECT 
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode,   
    o.city,
    o.phone
FROM employees e
INNER JOIN offices o 
    ON e.officeCode = o.officeCode;


--get the product name, product vendor, and product line of all products along with their product line details by using left join.
SELECT 
p.productName,
p.productVendor,
p.productLine 
FROM products p
LEFT JOIN productlines pl 
   ON p.productLine = pl.productLine;
;


-- Get the order date, shipped date, status, customer number, and customer name of all orders along with their customer details by using right join.
SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber,
    c.customerName
FROM orders o
RIGHT JOIN customers c 
    ON o.customerNumber = c.customerNumber
LIMIT 10;


