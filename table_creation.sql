create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(150),
	last_name VARCHAR(150),
	address VARCHAR(150),
	billing_info varchar(150)
);



create table ticket (
	ticket_id SERIAL primary key,
	sub_total Numeric(8,2),
	total_cost Numeric(8,2),
	customer_id Integer not null,
	foreign key(customer_id) references customer(customer_id)
);

create table cart (
	cart_id SERIAL primary key,
	ticket_id Integer not null,
	customer_id Integer not null,
	foreign key(ticket_id) references ticket(ticket_id),
	foreign key(customer_id) references customer(customer_id)
);

create table concesssions (
	snack_id SERIAL primary key,
	snack_name VARCHAR(150),
	sub_total Numeric(8,2),
	total_cost Numeric(8,2),
	customer_id Integer not null,
	foreign key(customer_id) references customer(customer_id)
);

--create table movies (
--	movie_id SERIAL primary key,
--	movie_name VARCHAR(150),
--	show_date Date default CURRENT_DATE,
--	ticket_id Integer not null,
--	customer_id Integer not null,
--	foreign key(ticket_id) references ticket(ticket_id),
--	foreign key(customer_id) references customer(customer_id)
--);
--

select * from customer 