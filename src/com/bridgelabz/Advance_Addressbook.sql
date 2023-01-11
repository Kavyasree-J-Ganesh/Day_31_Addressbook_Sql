---Use Case 1---
---Ability to create a Address Book Service DB---

mysql>create database addressbook_service;
1 row(s) affected

mysql>show databases
/*
addressbook_service
information_schema
mysql
payroll_service
performance_schema
sakila
sys
world */

mysql>use
Database changed


---Use Case 2---
---Ability to create a Address Book Table---
mysql> create table addressbook(
       id int not null auto_increment,
       first_name varchar(30) not null ,
       last_name varchar(30) not null ,
       address varchar(30) not null ,
       city varchar(30) not null ,
       state varchar(30) not null ,
       zip varchar(30) not null ,
       phone_number varchar(15) not null ,
       email varchar(30) not null ,
       primary key(id)
       );

---0 row(s) affected ---
mysql> desc addressbook

/*
Field	Type	Null	Key	Default	Extra
id	int	NO	PRI		auto_increment
first_name	varchar(30)	NO
last_name	varchar(30)	NO
address	varchar(30)	NO
city	varchar(30)	NO
state	varchar(30)	NO
zip	varchar(30)	NO
phone_number	varchar(15)	NO
email	varchar(30)	NO
*/



