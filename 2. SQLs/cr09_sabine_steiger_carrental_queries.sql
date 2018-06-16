select first_name from customer where first_name like 'L%'; 


SELECT last_name, invoice_ID
FROM customer
LEFT JOIN invoice on customer.fk_invoice_ID = invoice.invoice_ID;



SELECT last_name, invoice_ID
FROM customer
LEFT JOIN invoice on fk_invoice_ID = invoice_ID
UNION
SELECT last_name, invoice_ID
FROM customer
RIGHT JOIN invoice on fk_invoice_ID = invoice_ID;


SELECT office_ID, car_ID
FROM office_location
INNER JOIN car on office_location.fk_car_ID = car.car_ID;


SELECT last_name, start_date
FROM customer
INNER JOIN lended on customer.fk_lended_ID = lended.lended_ID;


SELECT last_name, street_name
FROM customer
INNER JOIN address on customer.fk_address_ID = address.address_ID;



