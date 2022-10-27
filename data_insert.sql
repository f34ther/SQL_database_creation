insert into customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
) values (
	1,
	'Joel',
	'Carter',
	'123 MAIN STREET, BG, WA, 98604',
	'4244-5555-4444-5555'
);

--select * from customer

insert into concesssions (
	snack_id,
	snack_name,
	sub_total,
	total_cost,
	customer_id 
) values (
	100,
	'Skittles',
	5.50,
	6.35,
	1
);

insert into ticket (
	ticket_id,
	sub_total,
	total_cost,
	customer_id 
) values (
	01,
	12.20,
	14.40,
	1
);

insert into movies (
	movie_id,
	show_date,
	ticket_id,
	customer_id 
) values (
	112,
	Default,
	01,
	1
);

insert into cart (
	cart_id,
	ticket_id ,
	customer_id 
) values (
	1,
	01,
	1
);

select * from customer;
select * from cart;
select * from concesssions;
select * from movies;
select * from ticket;
