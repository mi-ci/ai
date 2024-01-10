use sqldb;
select * from usertbl;
select count(name) from usertbl;
select * from buytbl;

select userid, sum(price*amount) from buytbl group by userid;

with t(tid, total) as (select userid, sum(price*amount) from buytbl group by userid) select * from t;

select name, sum(price*amount) from usertbl, buytbl group by name; 
select name, sum(price*amount) from usertbl, buytbl group by name; 
select * from usertbl, buytbl where usertbl.userid = buytbl.userid; 
select name, sum(amount*price) from usertbl, buytbl where usertbl.userid = buytbl.userid group by name; 
select count(name) from usertbl, buytbl; 
select * from usertbl, buytbl where name = '이승기';

select addr, max(height) from usertbl group by addr;
with t(avg) as (select max(height) from usertbl group by addr) select sum(avg)/count(avg) from t;

select * from buytbl;
with t(avg) as (select min(price) from buytbl group by groupname) select avg(avg) as 평균 from t;

select cast('2020-10-19 12:35:39.123' as date);
select cast('2020-10-19 12:35:39.123' as time);
select cast('2020-10-19 12:35:39.123' as datetime);

set @var1 = 10;
set @var2 = '제품판매처 : 삼성';
select @var2, @var1;
select @var2, prodname from buytbl;

select * from buytbl;
select avg(amount) from buytbl;

select cast(avg(amount) as signed Integer) from buytbl;
select convert(avg(amount), signed Integer) from buytbl;

set @var3 = 3;

select cast(@var3 as Float);
select convert(@var3, Float);

select cast(@var3 as character);
select convert(@var3, character);

select '100' + '200';
select concat('100', '200');
select concat(100, '200');
select 1>'2mega';
select 3 > '2mega';
select 1 = '1mega';

set @v1 = 10;
set @v2 = 20;
set @v3 = 100;

select if(@v1 > @v2, if(@v1 > @v3, @v1, @v3), if(@v2>@v3, @v2, @v3));
select if(@v1 < @v2, if(@v1 < @v3, @v1, @v3), if(@v2<@v3, @v2, @v3));

select if(@v1<@v2,if(@v1>@v3,@v1,if(@v3<@v2,@v3,@v2)),if(@v2>@v3,@v2,if(@v3>@v1,@v1,@v3)));

select ifnull(null, 100);
select ifnull(200, null);
select ifnull(200, 300);
select ifnull(null, ifnull(null, 300));

select nullif(100,100);
select nullif(200,100);

-- case when else end
select case  1
	when 1 then '일'
	when 2 then '이'
	when 3 then '삼'
    else '1,2,3이 아님'
end as 'case 연습';
    
select * from buytbl;
select case userid
	when 'kbs' then '김범수'
	when 'jyp' then '조용필'
	end as '이름', userid
from buytbl where userid = 'kbs';

select concat_ws (',', '100', '200');
select elt(3, '하나', '둘', '셋');
select field('김', '이', '박', '최', '김');
select find_in_set('김', '이,박,최,김,송');
select instr('이,박,최,김,송','김');
select locate('김', '이,박,최,김,송');

select format(12345,4);
select hex(10);
select oct(8);
select bin(15);

select insert('abcdefghi', 3, 4, '0000');
select ltrim(' abcde a');
select trim(' abc ');
select substring('대한민국만세',3,3);
select substring_index('cafe.naver.co.kr', '.', -2);
set @v = 'cafe.naver.com.co.kr';
set @v2 = substring_index(@v,'.',-3);
set @v3 = substring_index(@v2,'.',1);
select @v3;
set @v4 = locate('b', 'a,b,c,d,e');
select elt(2, 'a,b,c,d,e');
-- 숫자 함수
select ceiling(4.7);
select floor(4.7);
select round(4.7);

select truncate(123456577, -3);

-- 날짜. 시간 함수
select adddate(mdate, interval 31 day) from usertbl;
select mdate from usertbl;

select date(now()), time(now()), now();
select sysdate();

-- 대용량 파일 처리하기
create database moviedb;
use moviedb;

create table movietbl(
	movie_id int,
    movie_title varchar(30),
    movie_director varchar(20),
    movie_star varchar(20),
    movie_script longtext,
    movie_film longblob
) default charset=utf8mb4;

insert into movietbl values(1, '쉰들러리스트', '스필버그', '리암니슨', load_file('C:/ai/study/temp/movies/Schindler.txt'), load_file('C:/ai/study/temp/movies/Schindler.mp4'));
insert into movietbl values(1, '쉰들러리스트', '스필버그', '리암니슨', load_file('C:/ai/study/temp/movies/Schindler.txt'), load_file('C:/ai/study/temp/movies/Schindler.mp4'));
select * from movietbl;
truncate movietbl;
delete from movietbl;
show variables like 'max_allowed_packet';
show variables like 'secure_file_priv';



















