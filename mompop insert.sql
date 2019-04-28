use [MOM AND POP]

-----------------------------------------
use [MOM AND POP]

insert into MOVIES
values
--movie id, title, year, lenght, rating
('0001', 'Life of Pi', '2012', '127', 'PG'),
('0002', 'War Horse', '2011', '146', 'PG-13'),
('0003', 'Back to the Future', '1985', '116', 'PG'),
('0004', 'Back to the Future pt II', '1989', '108', 'PG'),
('0005', 'Sharknado', '2013', '86', 'TV-14');

select * 
from MOVIES
---------------------------------------------
use [MOM AND POP]

insert into AWARD
values
--award id, movie id, oscar (Y/N)
('1000', '0001', 'N'),
('1002', '0002', 'N'),
('1003', '0003', 'N'),
('1004', '0004', 'N'),
('1005', '0005', 'N');

select * 
from AWARD
---------------------------------------------
use [MOM AND POP]

insert into ACTOR
values 
--actor id, first name, last name, age, gender
('1234', 'Suraj', 'Sharma', '24', 'M'),
('1235', 'Jeremy', 'Irvine', '27','M'),
('1236', 'Michael', 'Fox', '56', 'M'),
('1237', 'Christopher', 'Lloyd', '79', 'M'),
('1238', 'Ian', 'Ziering', '54', 'M');

select *
from ACTOR
---------------------------------------------------
insert into ACTOR_IN_MOVIE
values
--movie cast id, movie id, actor id
('0123', '0001', '1234'),
('0124', '0002', '1235'),
('0125', '0003', '1236'),
('0126', '0003', '1237'),
('0127', '0004', '1238');

select *
from ACTOR_IN_MOVIE
-------------------------------------------------
insert into DIRECTOR
values
--director id, first name, last name, age, gender
('2234', 'Ang', 'Lee', '63', 'M'),
('2235', 'Steven', 'Spielberg', '71', 'M'),
('2236', 'Robert', 'Zemeckis', '65', 'M'),
('2237', 'Anthony', 'Ferrant', '49', 'M'),
('2238', 'Christopher', 'Nolan', '47', 'M');

select *
from DIRECTOR
---------------------------------------------------

insert into DIRECTOR_IN_MOVIE
values
--movie direct id, movie id, director id
('3234', '0001', '2234'),
('3235', '0002', '2235'),
('3236', '0003', '2236'),
('3237', '0004', '2237'),
('3238', '0005', '2238');

select *
from DIRECTOR_IN_MOVIE
-------------------------------------------------

insert into GENRE
values 
--genre_id, movie id, genre
('9001', '0001', 'Fiction'),
('9002', '0002', 'War Story'),
('9003', '0003', 'Adventure'),
('9004', '0004', 'Adventure'),
('9005', '0005', 'Fiction');

select *
from GENRE
------------------------------------------

insert into DISTRIBUTOR
values 
--distributor id, name, phone
('6721', 'Movie Warehouse', '4506789'),
('6722', 'Jones Movies', '6542341'),
('6723', 'Movie Maniac', '5431234'),
('6724', 'Stellar Films', '9087654'),
('6725', 'Best Pictures', '4568907');

select * 
from DISTRIBUTOR
-------------------------------------------

insert into DISTRIBUTOR_INVENTORY
values 
--inventory id, distributor id, qnty, price
('9991', '6721', '20', '18'),
('9992', '6722', '2500', '17'),
('9993', '6723', '120', '8'),
('9994', '6724', '100', '23'),
('9995', '6725', '12', '12');

select* 
from DISTRIBUTOR_INVENTORY
-----------------------------------------------

insert into STORE
values 
--store inventory id, type, qnty, price
('1301', 'VHS', '10', '8'),
('1302', 'DVD', '12', '5'),
('1303', 'DVD', '10', '5'),
('1305', 'VHS', '5', '8'),
('1306', 'DVD', '6', '7'),
('1307', 'VHS', '9', '9'),
('1308', 'VHS', '6', '8'),
('1309', 'VHS', '2', '7'),
('1310', 'DVD', '0', '5'),
('1311', 'DVD', '1', '5');

select *
from STORE
---------------------------------------------
insert into MOVIES_DVD
values
--dvd id, movie id, distributor id, store inv id
('1801', '0001', '6721', '1302'),
('1802', '0002', '6721', '1303'),
('1803', '0003', '6722', '1306'),
('1804', '0004', '6723', '1310'),
('1805', '0005', '6723', '1311');

select*
from MOVIES_DVD
-----------------------------------------------------
insert into MOVIES_VHS
values 
--vhs id, movie id, distributor id, store inv id
('1901', '0001', '6721', '1301'),
('1902', '0002', '6725', '1305'),
('1903', '0003', '6725', '1307'),
('1904', '0004', '6724', '1308'),
('1905', '0005', '6721', '1309');

select*
from MOVIES_VHS
------------------------------------------------------

insert into RENTED
values 
--rental id, customer id, dvd id, vhs id, rental price, rental date, due date, overdue (y/n)
('5001', '8311', '1801', '1901', '5', '2018-03-03', '2018-3-8', 'N'),
('5002', '8311', '1801', '1901', '8', '2018-03-02', '2018-03-03', 'Y'),
('5003', '8312', '1802', '1901', '5', '2018-02-12', '2018-02-23', 'Y'),
('5004', '8313', '1804', '1904', '5', '2018-02-12', '2018-02-23', 'Y'),
('5005', '8314', '1802', '1902', '8', '2018-03-03', '2018-03-05','N'),
('5006', '8315', '1804', '1904', '7', '2018-03-01', '2018-03-06', 'N');

select *
from RENTED
------------------------------------------------------------------------------

insert into CUSTOMER
values 
--customer id, first name, last name, street num, street name, city, state, zip
('8311', 'George', 'Dunseath', '8891', 'Wilson lane', 'Anderson', 'KT', '73120', '9893452'),
('8312', 'Bob', 'Sagot', '1256', 'Kelly St', 'Salem', 'MS', '67890', '1230987'),
('8313', 'Joe', 'Schmo', '9621', 'Ranger Dr', 'Clover', 'CO', '76543', '8765489'),
('8314', 'Rob', 'Lowe', '2356', 'Tilly Ln', 'Orange', 'WI', '65412', '7845690'),
('8315', 'Jacob', 'Apps', '2365', 'John St', 'Kalamazoo', 'MI', '77211', '3508897'),
('8316', 'Cassey', 'Willber', '7763', 'Ranger Lake', 'Cheboygan', 'WI', '77211', '35007789'),
('8317', 'Josh', 'Parks', '4598', 'West St', 'Gaylord', 'MI', '49735', '7312560'),
('8318', 'Zach', 'Strange', '8923', '1st Court ave', 'Clover', 'CO', '76543', '2390456');

select *
from CUSTOMER