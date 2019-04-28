

--MOVIES TABLE

use [MOM AND POP]

create table MOVIES (
	movie_id int
		constraint pk_movies primary key,
	title varchar(30),
	release_year date,
	length int,
	rating varchar(5)
	);

--AWARD TABLE

use [MOM AND POP]

create table AWARD (
	award_id int
		constraint pk_award primary key,
	movie_id int
		foreign key (movie_id) references MOVIES(movie_id),
	oscar varchar (1) --y or n
	);

--ACTOR IN MOVIE TABLE

use [MOM AND POP]

create table ACTOR_IN_MOVIE (
	movie_cast_id int
		constraint pk_actor_in_movie primary key,
	movie_id int
		foreign key (movie_id) references MOVIES(movie_id),
	actor_id int 
		foreign key (actor_id) references ACTOR(actor_id),
	);

--ACTOR TABLE

use [MOM AND POP]

create table ACTOR (
	actor_id int
		constraint pk_actor primary key,
	first_name varchar(20),
	last_name varchar(30),
	age int,
	gender varchar(1) --m or f
	);

--DIRECTOR TABLE

use [MOM AND POP]

create table DIRECTOR (
	director_id int
		constraint pk_director primary key,
	first_name varchar(20),
	last_name varchar(30),
	age int,
	gender varchar(1) --m or f
	);

--DIRECTOR IN MOVIE TABLE

use [MOM AND POP]

create table DIRECTOR_IN_MOVIE (
	movie_direct_id int
		constraint pk_director_in_movie primary key,
	movie_id int
		foreign key (movie_id) references MOVIES(movie_id),
	director_id int
		foreign key (director_id) references DIRECTOR(director_id),
	);

--STORE TABLE

use [MOM AND POP]

create table STORE (
	store_inventory_id int
		constraint pk_store primary key,
	type varchar(3), --vhs or dvd
	qnty int,
	price int,
	);

--DISTRIBUTOR TABLE

use [MOM AND POP]

create table DISTRIBUTOR (
	distributor_id int
		constraint pk_distributor primary key,
	name varchar(30),
	phone int,
	);

--DISTRIBUTOR INVENTORY TABLE

use [MOM AND POP]

create table DISTRIBUTOR_INVENTORY (
	inventory_id int
		constraint pk_distributor_inventory primary key,
	distributor_id int
		foreign key (distributor_id) references DISTRIBUTOR(distributor_id),
	qnty int,
	price int,
	);

--GENRE TABLE

use [MOM AND POP]

create table GENRE (
	genre_id int
		constraint pk_genre primary key,
	movie_id int
		foreign key (movie_id) references MOVIES(movie_id),
	genre varchar(30),
	);

--CUSTOMER TABLE

use [MOM AND POP]

create table CUSTOMER (
	customer_id int
		constraint pk_customer primary key,
	first_name varchar(20),
	last_name varchar(30),
	street_num int,
	street_name varchar(50),
	city varchar(20),
	state varchar(2),
	zip int,
	);

--MOVIES VHS TABLE

use [MOM AND POP]

create table MOVIES_VHS (
	vhs_id int
		constraint pk_vhs primary key,
	movie_id int
		foreign key (movie_id) references MOVIES(movie_id),
	distributor_id int
		foreign key (distributor_id) references DISTRIBUTOR(distributor_id),
	store_inventory_id int 
		foreign key (store_inventory_id) references STORE(store_inventory_id),
	);

-- MOVIES DVD TABLE

use [MOM AND POP]

create table MOVIES_DVD (
	dvd_id int
		constraint pk_dvd primary key,
	movie_id int
		foreign key (movie_id) references MOVIES(movie_id),
	distributor_id int
		foreign key (distributor_id) references DISTRIBUTOR(distributor_id),
	store_inventory_id int 
		foreign key (store_inventory_id) references STORE(store_inventory_id),
	);

--RENTED TABLE

use [MOM AND POP]

create table RENTED (
	rental_id int
		constraint pk_rented primary key,
	customer_id int
		foreign key (customer_id) references CUSTOMER(customer_id),
	dvd_id int
		foreign key (dvd_id) references MOVIES_DVD(dvd_id),
	vhs_id int
		foreign key (vhs_id) references MOVIES_VHS(vhs_id),
	rental_price int,
	rental_date date,
	due_date date,
	overdue varchar(2), --y or n
	);






	





