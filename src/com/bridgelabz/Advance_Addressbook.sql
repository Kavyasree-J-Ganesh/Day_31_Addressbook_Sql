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
mysql>
create table addressbook(
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
mysql> desc addressbook;

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

---Use Case 3---
---Ability to insert contact to addressBook---

mysql>
insert into addressbook(first_name,last_name,address,city,state,zip,phone_number,email)
values("Kavya","Ganesh","Kollam","Quilandy","Kerala",'673307','9496107658','kavyasreejganesh97@gmail.com'),
("Keerthana","Ganesh","Kollam","Quilandy","Kerala",'673307','9497778658','keerthanaganesh97@gmail.com'),
("Jayasree","TM","Kollam","Quilandy","Kerala",'673305','9496107658','jayasreetm@gmail.com');

/*
3 row(s) affected Records: 3  Duplicates: 0  Warnings: 0
*/

mysql> select * from addressbook;

/*
1	Kavya	Ganesh	Kollam	Quilandy	Kerala	673307	9496107658	kavyasreejganesh97@gmail.com
2	Keerthana	Ganesh	Kollam	Quilandy	Kerala	673307	9497778658	keerthanaganesh97@gmail.com
3	Jayasree	TM	Kollam	Quilandy	Kerala	673305	9496107658	jayasreetm@gmail.com
*/

---Use Case 3---
---Ability to edit contact using first_name---

mysql>
update addressbook
set phone_number = '9496107658' where first_name = "Keerthana";

/*
1 row(s) affected Rows matched: 1  Changed: 1  Warnings: 0
*/

mysql> select * from addressbook;

/*
1	Kavya	Ganesh	Kollam	Quilandy	Kerala	673307	9496107658	kavyasreejganesh97@gmail.com
2	Keerthana	Ganesh	Kollam	Quilandy	Kerala	673307	9496107658	keerthanaganesh97@gmail.com
3	Jayasree	TM	Kollam	Quilandy	Kerala	673305	9496107658	jayasreetm@gmail.com
*/

---Use Case 5---
---Ability to delete contact using first_name---

mysql> delete from addressbook where first_name = "Jayasree";

/*
1 row(s) affected
*/

mysql> select * from addressbook;

/*
1	Kavya	Ganesh	Kollam	Quilandy	Kerala	673307	9496107658	kavyasreejganesh97@gmail.com
2	Keerthana	Ganesh	Kollam	Quilandy	Kerala	673307	9496107658	keerthanaganesh97@gmail.com
*/

---Use Case 6---
---Ability select contacts using city or state---

mysql>
select * from addressbook
where city= "Quilandy";

/*
1	Kavya	Ganesh	Kollam	Quilandy	Kerala	673307	9496107658	kavyasreejganesh97@gmail.com
2	Keerthana	Ganesh	Kollam	Quilandy	Kerala	673307	9496107658	keerthanaganesh97@gmail.com
*/

mysql>
select * from addressbook
where state= "Kerala";

/*
1	Kavya	Ganesh	Kollam	Quilandy	Kerala	673307	9496107658	kavyasreejganesh97@gmail.com
2	Keerthana	Ganesh	Kollam	Quilandy	Kerala	673307	9496107658	keerthanaganesh97@gmail.com
*/

---Use Case 7---
---Ability get size of the addressbook using city or state---

mysql> select count(*) from addressbook where city = "Kochi";

/*
1
*/

mysql> select * from addressbook;

/*
1	Kavya	Ganesh	Kollam	Quilandy	Kerala	673307	9496107658	kavyasreejganesh97@gmail.com
2	Keerthana	Ganesh	Kollam	Quilandy	Kerala	673307	9496107658	keerthanaganesh97@gmail.com
4	Keerthana	Ganesh	Kollam	Kochi	Karnataka	673307	9496107658	kavyasreejganesh97@gmail.com
*/


---Use Case 8---
---Ability to retrieve entries sorted alphabetically by Person’s name for a given city---

mysql>
select * from addressbook
where city= "Quilandy"
order by first_name;

/*
Kavya	Ganesh	Kollam	Quilandy	Kerala	673307	9496107658	kavyasreejganesh97@gmail.com
Keerthana	Ganesh	Kollam	Quilandy	Kerala	673307	9496107658	keerthanaganesh97@gmail.com
*/

mysql> select * from addressbook;

/*
1	Kavya	Ganesh	Kollam	Quilandy	Kerala	673307	9496107658	kavyasreejganesh97@gmail.com
2	Keerthana	Ganesh	Kollam	Quilandy	Kerala	673307	9496107658	keerthanaganesh97@gmail.com
4	Keerthana	Ganesh	Kollam	Kochi	Karnataka	673307	9496107658	kavyasreejganesh97@gmail.com
*/

---Use Case 9---
---Ability to retrieve entries sorted alphabetically by Person’s name for a given city---

mysql>alter table addressbook add type varchar(10) after first_name;

/*
0 row(s) affected
*/


mysql>desc addressbook;

/*
id	int	NO	PRI		auto_increment
first_name	varchar(30)	NO
type	varchar(10)	YES
last_name	varchar(30)	NO
address	varchar(30)	NO
city	varchar(30)	NO
state	varchar(30)	NO
zip	varchar(30)	NO
phone_number	varchar(15)	NO
email	varchar(30)	NO
*/

---Use Case 10---
---Ability to get number of contact persons---

mysql> select count(*) from addressbook where type="Family";

/*
3
*/

mysql>select * from addressbook;

/*
Kavya	Family	Ganesh	Kollam	Quilandy	Kerala	673307	9496107658	kavyasreejganesh97@gmail.com
Keerthana	Family	Ganesh	Kollam	Quilandy	Kerala	673307	9496107658	keerthanaganesh97@gmail.com
Keerthana	Family	Ganesh	Kollam	Kochi	Karnataka	673307	9496107658	kavyasreejganesh97@gmail.com
*/

---Use Case 11---
---Ability to add person to both Friend and Family---

mysql>
insert into addressbook(first_name,type,last_name,address,city,state,zip,phone_number,email)
values("Maggie", "Family", "pet","Kollam","Kochi","Karnataka",'673307','9496107658','kavyasreejganesh97@gmail.com');

insert into addressbook(first_name,type,last_name,address,city,state,zip,phone_number,email)
values("Julie", "Friend", "pet","Kollam","Kochi","Karnataka",'673307','9496107658','kavyasreejganesh97@gmail.com');

mysql>select * from addressbook;
/*
     1	Kavya	Family	Ganesh	Kollam	Quilandy	Kerala	673307	9496107658	kavyasreejganesh97@gmail.com
     2	Keerthana	Family	Ganesh	Kollam	Quilandy	Kerala	673307	9496107658	keerthanaganesh97@gmail.com
     4	Keerthana	Family	Ganesh	Kollam	Kochi	Karnataka	673307	9496107658	kavyasreejganesh97@gmail.com
     5	Maggie	Family	pet	Kollam	Kochi	Karnataka	673307	9496107658	kavyasreejganesh97@gmail.com
     6	Julie	Friend	pet	Kollam	Kochi	Karnataka	673307	9496107658	kavyasreejganesh97@gmail.com
*/

---Use Case 12---
---Ability to Draw to ER diagram---

Image link : "/img.png"

---Use Case 13---
---Ensure all retrieve queries done especially in UC 6, UC 7, UC 8 and UC 10 are working with new table structure---

Verified
