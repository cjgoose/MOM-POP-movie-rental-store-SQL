
--Retrive all customer names, account numbers, addresses (street/zip only)
--sorted by accnt number
use [MOM AND POP]

select CUSTOMER.customer_id, CUSTOMER.first_name, CUSTOMER.last_name, CUSTOMER.street_name, CUSTOMER.zip
from CUSTOMER
order by CUSTOMER.customer_id

-----------------------------------------------------------------

--retrieve dvds rented last 30 days, sort chronological rental date order

use [MOM AND POP]

select CUSTOMER.customer_id, RENTED.rental_id, RENTED.dvd_id, RENTED.rental_date
from CUSTOMER, RENTED
where CUSTOMER.customer_id=RENTED.customer_id and RENTED.rental_date between '2018-02-04' and '2018-03-04'
order by RENTED.rental_date

----------------------------------------------------
select CUSTOMER.customer_id, CUSTOMER.first_name, CUSTOMER.last_name
from CUSTOMER
where last_name= 'Wilber'

--update customer maden name

use [MOM AND POP]

update CUSTOMER
set last_name= 'Parks'
where customer_id= '8316' 

select CUSTOMER.customer_id, CUSTOMER.first_name, CUSTOMER.last_name
from CUSTOMER
where customer_id= '8316'

------------------------------------------------------------------------

--delete customer

use [MOM AND POP]

delete from CUSTOMER
where customer_id = '8316'

select *
from CUSTOMER
