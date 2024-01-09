use sqldb;

select * from usertbl;
select * from usertbl where userID = 'bbk' or userID = 'JKW';
select * from usertbl where name like '김%';
select height from usertbl where name = '김경호';
select name, height from usertbl where height > 177;
select * from usertbl where height > (select height from usertbl where name = '김경호');
select * from usertbl where birthYear > (select birthYear from usertbl where name = '은지원');
select * from usertbl where addr = '서울';

select * from buytbl;
select * from buytbl where groupName = (select groupName from buytbl where prodName = '노트북');
select prodName from buytbl where userID = 'KBS';

select * from usertbl where height < some(select height from usertbl where addr = '서울');
select name from usertbl where userID=some(select userID from buytbl where prodName = '운동화');

select * from usertbl order by height desc limit 3;

create table usertbl2 (select * from usertbl);
select * from usertbl2;

create table user_seoul (select * from usertbl where addr = '서울');
drop table user_seoul;
select * from user_seoul;

create table user_175_180 (select userid, name, height from usertbl where height >175 and height < 180);
select * from user_175_180;

select userid, sum(amount), avg(amount) as 평균, max(amount), count(amount) as 개수, stddev(amount), var_samp(amount) from buytbl group by userID;
select * from buytbl;

select userid, sum(amount*price) from buytbl group by userid having sum(amount*price) > 1000;
select userid, sum(amount*price) from buytbl group by userid;
select * from usertbl where userid = any(select userid from buytbl group by userid having sum(amount*price) > 1000);
create table user_event (select * from usertbl where userid = any(select userid from buytbl group by userid having sum(amount*price) > 1000));
select * from user_event;

select * from buytbl;
drop table buy_elec;
select groupName, sum(amount), count(amount) from buytbl group by groupName;
create table buy_elec (select prodname, groupName, amount, price from buytbl where groupName = (select groupName from buytbl group by groupName order by sum(amount) desc limit 1));
create table buy_elec (select prodname, groupName, sum(amount), sum(price) from buytbl where groupName = (select groupName from buytbl group by groupName order by sum(amount) desc limit 1));
select * from buy_elec;
select prodname, sum(amount), groupName from buytbl group by prodname;
drop table elec2;
create table elec2 (select prodname, groupname, sum(amount), sum(price) from buytbl where groupname=(select groupname from buytbl group by groupName order by sum(price) desc limit 1) group by groupname, prodname);
select * from elec2;

select num, groupname, sum(price) from buytbl group by groupname, num with rollup order by groupname;
select * from buytbl;

drop table if exists testTbl2;
create table if not exists testTbl2 (
	id int auto_increment primary key,
    username char(3),
    age int);
alter table testtbl2 auto_increment=1;
set @@auto_increment_increment=3;
insert into testTbl2 values(null,'지민',25);
insert into testTbl2 values(null,'유나',22);
insert into testTbl2 values(null,'유경',21);
insert into testTbl2 values(null,'지수',21);
select * from testtbl2;
delete from testtbl2 where id =3;

drop table testtbl4;
create table testtbl4 (
	id int,
    fname varchar(50),
    lname varchar(50)
);

use employees;
use sqldb;
select * from employees.employees;
select * from testtbl4;
insert into employees values(1002,'05/05/05','홍','길동','M','23/12/12');
insert into employees values(1005,'07/05/05','홍','길이','F','23/10/12');
insert into employees values(1006,'06/05/05','홍','길일','F','23/8/12');

select emp_no, first_name, last_name from employees.employees;
insert into testtbl4 select emp_no, first_name, last_name from employees.employees;

select * from buytbl order by price desc;
create table copy_buytbl (select * from buytbl);
select * from copy_buytbl order by price desc limit 3;
delete from copy_buytbl order by price desc limit 3;
delete from copy_buytbl order by amount asc limit 4;
select * from copy_buytbl;
select count(num) from buytbl;
select * from copy_buytbl where prodname = '운동화';
delete from copy_buytbl where prodname = '운동화' order by price limit 1;
insert into copy_buytbl values(13, 'BBK', '운동화', null, 30, 2); 
update copy_buytbl set price = 77 where userid = 'bbk' and prodname = '운동화';













