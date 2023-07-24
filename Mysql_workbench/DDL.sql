DROP SCHEMA IF EXISTS blue_atm;
CREATE SCHEMA blue_atm;
USE blue_atm;

CREATE TABLE clients(
client_id varchar(11), /*99,999,999,999 users*/
client_name varchar(100),
client_email varchar(256),
client_phone varchar(16),
client_gender TINYINT, 
/* The four codes specified in ISO/IEC 5218 are: 0 = Not known; 1 = Male; 2 = Female; 9 = Not applicable.*/
client_birth_date DATE,
PRIMARY KEY(client_id)
);

CREATE TABLE accounts(
client_id_fk varchar(11),
account_id varchar(18),
last_log TIMESTAMP DEFAULT current_timestamp,
account_status BIT DEFAULT 1, /*Boolean 1: Active 0: Suspended*/
account_pin varchar(4), 
PRIMARY KEY(account_id),
FOREIGN KEY(client_id_fk) REFERENCES clients(client_id)
ON DELETE CASCADE
);

CREATE TABLE cards(
account_id_fk varchar(18),
card_id varchar(16),
card_type varchar(6),
expiration_date DATE,
card_cvv varchar(3), 
card_balance decimal(13,2), /*Supports a max value of:$99,999,999,999.99*/
PRIMARY KEY(card_id),
FOREIGN KEY(account_id_fk) REFERENCES accounts(account_id)
);

CREATE TABLE transactions(
card_id_fk varchar(16),
transaction_id SERIAL,
transaction_type varchar(15), 
transaction_date varchar(20),
transaction_amount decimal(13,2),
PRIMARY KEY(transaction_id),
FOREIGN KEY(card_id_fk) REFERENCES cards(card_id)
);

/*tables content*/
select * from clients;
select * from accounts;
select * from cards;
select * from transactions;

/*Run until here*/
/*table drops*/
drop table transactions;
drop table cards;
drop table accounts;
drop table clients;

/*tables information*/
show table STATUS like 'clients';
show table status like 'accounts';
show table status like 'cards';
show table status like 'transactions';
