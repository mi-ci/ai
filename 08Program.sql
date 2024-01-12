use sqldb;
select * from usertbl;
select * from buytbl;

-- union 중복된거 제거, union all 중복된거 모두 합치기
select userid, name from usertbl union all select userid, price from buytbl;

select name from usertbl where mobile1 is null;
select name, mobile1, mobile2 from usertbl where mobile1 is not null;

-- SQL 구문읠 프로그래밍처럼 만들 수 있다
drop procedure if exists ifProc;
-- stored procedure
delimiter $$
create procedure ifProc()
begin
	declare var1 int;
    if var1 = 100 then
		select '100입니다';
	else
		select '아닙니다';
	end if;
end $$
delimiter ;
call ifProc();

use employees;
select * from employees;
drop procedure if exists ifProc2;
delimiter $$
create procedure ifProc2()
begin
	declare hiredate date;
    declare curdate date;
    declare days int;
    
    select hire_date into hiredate from employees.employees
    where emp_no = 1001;
    
    set curdate = current_date();
    set days = datediff(curdate, hiredate);
    
    if(days/365) >= 5 then
		select concat('입사한지', days, '일이나 지났습니다. 축하합니다') 메시지;
	else
		select concat('입사한지', days, '일밖에 안되었네요. 열심히해요') 메시지;
	end if;
end $$
delimiter ;

call ifProc2();

-- 298
drop procedure if exists ifProc3;
delimiter $$
create procedure ifProc3()
begin
	declare point int;
    declare credit char(1);
    set point = 77;
    
    if point >= 90 then
		set credit = 'A';
    elseif point >= 80 then
		set credit = 'A';
    elseif point >= 70 then
		set credit = 'A';
    elseif point >= 60 then
		set credit = 'A';
    else
		set credit = 'A';
	end if;
	
    select concat('취득점수==>', point), concat('학점==>', credit);
end $$
delimiter ;
call ifProc3();







