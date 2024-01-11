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
);

insert into movietbl values(1, '쉰들러리스트', '스필버그', '리암니슨', load_file('C:/ai/study/temp/movies/Schindler.txt'), load_file('C:/ai/study/temp/movies/Schindler.mp4'));
select * from movietbl;

select movie_script from movietbl where movie_id = 1;
select movie_script from movietbl where movie_id = 1 into outfile 'C:/ai/study/temp/movies/movie_script_copy.txt' lines terminated by '\\n';
select movie_film from movietbl where movie_id = 1 into outfile 'C:/ai/study/temp/movies/movie_film_copy.mp4';


use sqldb;
create table pivotTest(
	uName char(3),
    season char(2),
    amount int
);

insert into pivotTest values ('김범수', '겨울', 10), ('윤종신', '여름', 15), ('김범수', '가을', 25), ('윤종신', '가을', 25), 
							('김범수', '여름', 25), ('윤종신', '봄', 5), ('김범수', '봄', 15), ('윤종신', '겨울', 35);

select * from pivotTest;

select uname '이름', sum(if(season='봄', amount, 0)) '봄',
					sum(if(season='여름', amount, 0)) '여름',
					sum(if(season='가을', amount, 0)) '가을',
                    sum(if(season='겨울', amount, 0)) '겨울',
                    sum(amount) '합계'
					from pivottest group by uname;
                    
select season, sum(if(uname='김범수',amount,0)) '김범수', sum(if(uname='윤종신',amount,0)) '윤종신',  sum(amount) '합계' from pivottest group by season;


select json_array(1, 'abc', null, true, curtime());
select json_object('score',87,'name','hong','age',25);
set @jsondate = json_object('score',87,'name','hong','age',25);
select @jsondate;

select * from usertbl;

select json_object(userid,addr) from usertbl;
select json_object(userid,json_array(mobile1,mobile2)) from usertbl;

-- 외부로 내보내기
select json_object(userid,json_array(mobile1,mobile2)) from usertbl into outfile 'C:/ai/study/temp/movies/jsonOutput.json';

select json_valid('"hello"');
select if(json_valid('hello') = 1, 'json자료다','아니다');
SET @j = '["abc", [{"k": "10"}, "def"], {"x":"abc"}, {"y":"bcd"}]';
select json_search(@j, 'all', 'bcd55');

set @j = '{"a" : 1,  "b" : [2,3]}';
select json_insert(@j, '$.a', 10);
select @j;

select json_replace(@j, '$.a', 1000);

select userid from usertbl inner join buytbl on usertbl.userid = buytbl.userid;
select * from usertbl;
select * from buytbl where userid = 'bbk';

select usertbl.name, buytbl.prodname from usertbl inner join buytbl on usertbl.userid = buytbl.userid where birthyear between 1970 and 1980 order by usertbl.name limit 3;
select * from usertbl inner join buytbl;

CREATE TABLE stdTbl
(stdName VARCHAR(10) NOT NULL PRIMARY KEY,
addr CHAR(4) NOT NULL
);
CREATE TABLE clubTbl
(clubName VARCHAR(10) NOT NULL PRIMARY KEY,
roomNo CHAR(4) NOT NULL
);
CREATE TABLE stdclubTbl
(num int AUTO_INCREMENT NOT NULL PRIMARY KEY,
stdName VARCHAR(10) NOT NULL,
clubName VARCHAR(10) NOT NULL,
FOREIGN KEY(stdName) REFERENCES stdtbl(stdName),
FOREIGN KEY(clubName) REFERENCES clubtbl(clubName)
);
INSERT INTO stdtbl VALUES ('김범수', '경남'), ('성시경','서울'), ('조용필', '경기'), ('은지원',
'경북'), ('바비킴', '서울');
INSERT INTO clubtbl VALUES ('수영', '101호'), ('바둑', '102호'), ('축구', '103호'), ('봉사',
'104호');
INSERT INTO stdclubtbl VALUES (NULL, '김범수', '바둑'), (NULL, '김범수', '축구'), (NULL, '조용필', '축구'), (NULL, '은지원', '축구'), (NULL, '은지원', '봉사'), (NULL, '바비킴', '봉사');

select * from stdtbl;
select * from clubtbl;
select * from stdclubtbl;

select sc.stdname, c.roomno from stdtbl s inner join stdclubtbl sc on s.stdname = sc.stdname inner join clubtbl c on sc.clubname = c.clubname;
select * from stdtbl s inner join stdclubtbl sc on s.stdname = sc.stdname inner join clubtbl c on sc.clubname = c.clubname;

select c.clubname, sc.stdname from clubtbl c inner join stdclubtbl sc on c.clubname = sc.clubname;

select s.stdname, sc.clubname, c.roomno from stdtbl s inner join stdclubtbl sc on s.stdname = sc.stdname inner join clubtbl c on sc.clubname = c.clubname where s.stdname = '은지원';

select s.addr from stdtbl s inner join stdclubtbl sc on s.stdname = sc.stdname;

select c.roomno, sc.stdname from clubtbl c inner join stdclubtbl sc on c.clubname = sc.clubname inner join stdtbl s on sc.stdname = s.stdname where c.roomno = '101호' or c.roomno = '102호';

-- outer join null까지
select * from stdtbl s left outer join stdclubtbl sc on s.stdname = sc.stdname;
select * from stdtbl s right outer join stdclubtbl sc on s.stdname = sc.stdname;
select * from stdclubtbl sc right outer join clubtbl c on sc.clubname = c.clubname;
select sc.stdname, c.roomno from stdclubtbl sc full outer join clubtbl c on s.clubname = c.clubname;

select s.addr, s.stdname, sc.clubname from stdtbl s left outer join stdclubtbl sc on s.stdname = sc.stdname where s.addr = '서울';
select c.roomno, s.stdname from clubtbl c left outer join stdclubtbl sc on c.clubname = sc.clubname right outer join stdtbl s on sc.stdname = s.stdname where c.roomno = '101호' or c.roomno = '102호';
select c.roomno, sc.stdname from clubtbl c left outer join stdclubtbl sc on c.clubname = sc.clubname where c.roomno = '101호' or c.roomno = '102호';

-- cross join
select * from stdtbl s cross join stdclubtbl sc;

-- self join
select * from stdtbl;




USE sqldb;
CREATE TABLE empTbl (emp CHAR(3), manager CHAR(3), empTel VARCHAR(8));

INSERT INTO empTbl VALUES('나사장',NULL,'0000');
INSERT INTO empTbl VALUES('김재무', '나사장', '2222');
INSERT INTO empTbl VALUES('김부장', '김재무', '2222-1');
INSERT INTO empTbl VALUES('이부장', '김재무', '2222-2'); 
INSERT INTO empTbl VALUES ('우대리', '이부장', '2222-2-1'); 
INSERT INTO empTbl VALUES ('지사원', '이부장', '2222-2-2'); 
INSERT INTO empTbl VALUES ('이영업', '나사장', '1111'); 
INSERT INTO empTbl VALUES ('한과장', '이영업', '1111-1'); 
INSERT INTO empTbl VALUES ('최정보', '나사장', '3333'); 
INSERT INTO empTbl VALUES ('윤차장', '최정보', '3333-1'); 
INSERT INTO empTbl VALUES ('이주임', '윤차장', '3333-1-1');

select e1.emptel from emptbl e inner join emptbl e1 on e.manager = e1.emp where e.emp = '우대리';
select e1.manager from emptbl e inner join emptbl e1 on e.manager = e1.emp where e.emp='이주임';
select e2.manager from emptbl e inner join emptbl e1 on e.manager = e1.emp inner join emptbl e2 on e1.manager = e2.emp where e.emp='이주임';
select * from emptbl e inner join emptbl e1 on e.manager = e1.emp;

















