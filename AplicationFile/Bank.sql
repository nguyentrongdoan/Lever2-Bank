create database bank_data;
use bank_data;
create table customers(
    customer_id int primary key ,
    customer_name varchar(50),
    email varchar(25),
    phone varchar(15)
);

create table account(
    account_number varchar(25),
    account_type varchar(10),
    creat_day date,
    money float
);
alter table account add primary key (account_number);
create table transactions(
    transaction_code varchar(50),
    money float,
    time date,
    desciption varchar(255),
    primary key (transaction_code)
);
alter table account add customer_id int;
alter table account add foreign key (customer_id)references customers(customer_id);
alter table transactions add account_number varchar(25);
alter table transactions add foreign key (account_number)references account(account_number);
select * from account;
select *from transactions;
select * from customers;
