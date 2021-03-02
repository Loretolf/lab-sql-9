-- Lab 2.09
use sakila;

CREATE TABLE rentals_may (
  rental_id int(11) UNIQUE NOT NULL,
  rental_date varchar(20) DEFAULT NULL,
  inventory_id int(11) DEFAULT NULL,
  return_date varchar(20) DEFAULT NULL,
  staff_id int(11) DEFAULT NULL,
  customer_id int(11) DEFAULT NULL,
  last_update varchar(19) DEFAULT NULL,
  CONSTRAINT PRIMARY KEY (rental_id)
);
-- drop table if exists rentals_may;

INSERT INTO rentals_may (rental_id, rental_date, inventory_id, return_date, staff_id, customer_id, last_update)
SELECT rental_id, rental_date, inventory_id, return_date, staff_id, customer_id, last_update from rental
WHERE substr(rental_date,6,2)=05;

select * from rentals_may;

CREATE TABLE rentals_june (
  rental_id int(11) UNIQUE NOT NULL,
  rental_date varchar(20) DEFAULT NULL,
  inventory_id int(11) DEFAULT NULL,
  return_date varchar(20) DEFAULT NULL,
  staff_id int(11) DEFAULT NULL,
  customer_id int(11) DEFAULT NULL,
  last_update varchar(19) DEFAULT NULL,
  CONSTRAINT PRIMARY KEY (rental_id)
);

INSERT INTO rentals_june (rental_id, rental_date, inventory_id, return_date, staff_id, customer_id, last_update)
SELECT rental_id, rental_date, inventory_id, return_date, staff_id, customer_id, last_update from rental
WHERE substr(rental_date,6,2)=06;


select customer_id, count(rental_id) as 'Times' from rentals_may
group by customer_id
order by customer_id asc
;

select customer_id, count(rental_id) as 'Times' from rentals_june
group by customer_id
order by customer_id asc
;

