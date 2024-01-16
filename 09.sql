use sqldb;

-- 테이블 생성하기
create table rankut
as
select * from usertbl;

-- 테이블 컬럼 추가하기 r1 안에 최우수고객/우수고객/일반고객/유령고객
alter table rankut
add column r1 varchar(20); 

select * from rankut;
select * from buytbl order by userid;

delimiter $$
create procedure gP() 
begin 
declare id varchar(10);
declare hap bigint;
declare usergrade varchar(20);
declare endOfRow  boolean default False;
declare userCursor cursor for select u.userid , sum( b.price * b.amount) from buytbl b right outer join usertbl u on b.userid = u.userid group by u.userid , u.name;
declare continue handler for not found set endOfRow = true;
open userCursor;
grade_loop: Loop
    fetch userCursor into id , hap;
    if endofrow then leave grade_loop; 
    end if;
   case 
	   when hap >= 1500 then set usergrade = '최우수고객';
	   when hap >= 1000 then set usergrade = '우수고객';
	   when hap >= 1 then set usergrade = '일반고객';
	   else set usergrade = '잠재고객';
   end case;
   update rankut set r1 = usergrade where userid = id;
	end Loop grade_loop;
   close userCursor;
end $$ 
delimiter ; 

call gp();

select * from rankut;

create database if not exists testdb;
use testdb;

create table if not exists testtbl (id int, text varchar(10));
insert into testtbl values(1, '레드벨벳');
insert into testtbl values(2, '잇지');
insert into testtbl values(3, '블랙핑크');

select * from testtbl;

drop trigger if exists testtrg;

delimiter //
create trigger testtrg after delete on testtbl for each row
begin
set @msg = '가수 그룹이 삭제됩니다';
end //
delimiter ;

set @msg = '';
insert into testtbl values(4, '마마무');
select @msg;
delete from testtbl where id = 4;
update testtbl set text='마마마무' where id =4;
select @msg;

create table backup_userTbl 
 (
  userID     CHAR(8) NOT NULL PRIMARY KEY, -- 사용자 아이디(PK)
  name       VARCHAR(10) NOT NULL, -- 이름
  birthYear   INT NOT NULL,  -- 출생년도
  addr        CHAR(2) NOT NULL, -- 지역(경기,서울,경남 식으로 2글자만입력)
  mobile1   CHAR(3), -- 휴대폰의 국번(011, 016, 017, 018, 019, 010 등)
  mobile2   CHAR(8), -- 휴대폰의 나머지 전화번호(하이픈제외)
  height       SMALLINT,  -- 키
  mDate       DATE,  -- 회원 가입일
  modType char(2), -- 변경된 타입, '수정' 또는 '삭제'
  modDate date, -- 변경된 날짜
  modUser varchar(256) -- 변경한 사용자 
 ) ;
 
 create table usertbl as select * from sqldb.usertbl;

 
 delimiter //
 create trigger but after update on usertbl for each row
 begin
 insert into backup_userTbl values(OLD.userid, old.name, old.birthyear, old.addr, old.mobile1, old.mobile2, old.height, old.mdate, '수정', now(), current_user());
 end//
 delimiter ;
 select * from usertbl;
 
update usertbl set addr = '서울' where userid='jyp';
select * from backup_usertbl;

use testdb;
-- 삭제 트리거-----------------------------------------------------------------------------
create table backup_userTbl2 
 (
  userID     CHAR(8) NOT NULL PRIMARY KEY, -- 사용자 아이디(PK)
  name       VARCHAR(10) NOT NULL, -- 이름
  birthYear   INT NOT NULL,  -- 출생년도
  addr        CHAR(2) NOT NULL, -- 지역(경기,서울,경남 식으로 2글자만입력)
  mobile1   CHAR(3), -- 휴대폰의 국번(011, 016, 017, 018, 019, 010 등)
  mobile2   CHAR(8), -- 휴대폰의 나머지 전화번호(하이픈제외)
  height       SMALLINT,  -- 키
  mDate       DATE,  -- 회원 가입일
  modType char(2), -- 변경된 타입, '수정' 또는 '삭제'
  modDate date, -- 변경된 날짜
  modUser varchar(256) -- 변경한 사용자 
 ) ;

delimiter //
create trigger delete_backup after delete on usertbl for each row
begin
insert into backup_userTbl2 values(OLD.userid, old.name, old.birthyear, old.addr, old.mobile1, old.mobile2, old.height, old.mdate, '삭제', now(), current_user());
end//
delimiter ;


delete from usertbl where userid = 'lsg';
select * from backup_userTbl2;
select * from usertbl;

-- 인서트 트리거-----------------------------------------------------------------------------------------------------------------
create table backup_userTbl3 
 (
  userID     CHAR(8) NOT NULL PRIMARY KEY, -- 사용자 아이디(PK)
  name       VARCHAR(10) NOT NULL, -- 이름
  birthYear   INT NOT NULL,  -- 출생년도
  addr        CHAR(2) NOT NULL, -- 지역(경기,서울,경남 식으로 2글자만입력)
  mobile1   CHAR(3), -- 휴대폰의 국번(011, 016, 017, 018, 019, 010 등)
  mobile2   CHAR(8), -- 휴대폰의 나머지 전화번호(하이픈제외)
  height       SMALLINT,  -- 키
  mDate       DATE,  -- 회원 가입일
  modType char(2), -- 변경된 타입, '수정' 또는 '삭제'
  modDate date, -- 변경된 날짜
  modUser varchar(256) -- 변경한 사용자 
 ) ;

delimiter //
create trigger insert_backup after insert on usertbl for each row
begin
signal sqlstate '45000' set message_text = '데이터의 입력을 시도하였습니다. 귀하의 정보가 서버에 기록되었습니다.';
end//
delimiter ;
select * from usertbl;
insert into usertbl values('ABC', '에이씨', 1977, '서울', '011', '11111111', 181, '2019-12-15');

drop trigger insert_backup;

-- before 트리거-------------------------------------------------------------------------------------------
delimiter //
create trigger user_before_insert before insert on usertbl for each row
begin
if new.birthyear < 1900 then set new.birthyear = 0;
elseif new.birthyear > year(now()) then set new.birthyear = year(now());
end if;
end//
delimiter ;

insert into usertbl values('ABC', '에이씨', 1877, '서울', '011', '11111111', 181, '2019-12-15');
insert into usertbl values('EEC', '이이씨', 2877, '서울', '011', '11111111', 181, '2019-12-15');
select * from usertbl;

-- before insert trigger---------------------------------------------
delimiter //
create trigger user_before_insert2 before insert on usertbl for each row
begin
if new.addr = '평양' then set new.name = '외국인'; 
if new.mobile1 = '999' then set new.mobile1 = '010';
else ;
end if;
end//
delimiter ;

insert into usertbl values('EEA', '이이에', 2877, '평양', '999', '11111111', 181, '2019-12-15');

show triggers from testdb;

drop database if exists triggerdb;
create database if not exists triggerdb;
use triggerdb;

create table ordertbl(
	orderno int auto_increment primary key,
    userid varchar(5),
    prodname varchar(5),
    orderamount int);

create table prodTbl(
	prodname varchar(5),
    account int);

create table deliverytbl(
	deliveryno int auto_increment primary key,
    prodname varchar(5),
    account int);

insert into prodTbl values('사과',100);
insert into prodTbl values('배',100);
insert into prodTbl values('귤',100);

select * from prodtbl;

delimiter //
create trigger ordertg after insert on ordertbl for each row
begin
update prodtbl set account = account - new.orderamount where prodname = new.prodname;
end//
delimiter ;

drop trigger prodtg;

delimiter //
create trigger prodtg after update on prodtbl for each row
begin
declare orderamount int;
set orderamount = old.account - new.account;
insert into deliverytbl values(null, new.prodname, orderamount);
end//
delimiter ;

insert into ordertbl values(null, '110', '사과', 5);
select * from ordertbl;
select * from prodtbl;
select * from deliverytbl;

-- 569 14장 지리 정보 시스템----------------------------------------------------------------------------------------------------------

/* 14장 */

-- <실습 1> --

DROP DATABASE IF EXISTS GisDB;
CREATE DATABASE GisDB;

USE GisDB;
CREATE TABLE StreamTbl (
   MapNumber CHAR(10),  -- 지도일련번호
   StreamName CHAR(20),  -- 하천이름
   Stream GEOMETRY ); -- 공간데이터(하천개체)

INSERT INTO StreamTbl VALUES ( '330000001' ,  '한류천', 
   ST_GeomFromText('LINESTRING (-10 30, -50 70, 50 70)'));
INSERT INTO StreamTbl VALUES ( '330000001' ,  '안양천', 
   ST_GeomFromText('LINESTRING (-50 -70, 30 -10, 70 -10)'));
INSERT INTO StreamTbl VALUES ('330000002' ,  '일산천', 
   ST_GeomFromText('LINESTRING (-70 50, -30 -30, 30 -60)'));

CREATE TABLE BuildingTbl (
   MapNumber CHAR(10),  -- 지도일련번호
   BuildingName CHAR(20),  -- 건물이름
   Building GEOMETRY ); -- 공간데이터(건물개체)
   
INSERT INTO BuildingTbl VALUES ('330000005' ,  '하나은행', 
   ST_GeomFromText('POLYGON ((-10 50, 10 30, -10 10, -30 30, -10 50))'));
INSERT INTO BuildingTbl VALUES ( '330000001' ,  '우리빌딩', 
   ST_GeomFromText('POLYGON ((-50 -70, -40 -70, -40 -80, -50 -80, -50 -70))'));
INSERT INTO BuildingTbl VALUES ( '330000002' ,  '디티오피스텔', 
   ST_GeomFromText('POLYGON ((40 0, 60 0, 60 -20, 40 -20, 40 0))'));

SELECT * FROM StreamTbl;

SELECT * FROM BuildingTbl;

select * from buildingtbl union all select * from streamtbl;

SELECT * FROM StreamTbl WHERE ST_Length(Stream) > 140;

SELECT BuildingName, ST_AREA(Building) FROM BuildingTbl 
   WHERE ST_AREA(Building) < 500;
    
SELECT * FROM StreamTbl
UNION ALL
SELECT * FROM BuildingTbl;

-- </실습 1> --

SELECT StreamName, BuildingName, Building, Stream
   FROM BuildingTbl , StreamTbl 
   WHERE ST_Intersects(Building, Stream) = 1   AND StreamName = '안양천';

SELECT ST_Buffer(Stream,5) FROM StreamTbl;

-- <실습 2> --


-- </실습 2> --

-- <실습 3> --

DROP DATABASE IF EXISTS KingHotDB;
CREATE DATABASE KingHotDB;

USE KingHotDB;
-- [왕매워 짬뽕] 체인점 테이블 (총 매출액 포함)
CREATE TABLE Restaurant
(restID int auto_increment PRIMARY KEY,  -- 체이점 ID
 restName varchar(50),           -- 체인점 이름
 restAddr varchar(50),           -- 체인점 주소
 restPhone varchar(15),           -- 체인점 전화번호
 totSales  BIGINT,              -- 총 매출액         
 restLocation geometry ) ;           -- 체인점 위치

-- [왕매워 짬뽕] 1호점~9호점 입력
INSERT INTO Restaurant VALUES
 (NULL, '왕매워 짬뽕 1호점', '서울 강서구 방화동', '02-111-1111', 1000, ST_GeomFromText('POINT(-80 -30)')),
 (NULL, '왕매워 짬뽕 2호점', '서울 은평구 증산동', '02-222-2222', 2000, ST_GeomFromText('POINT(-50 70)')),
 (NULL, '왕매워 짬뽕 3호점', '서울 중랑구 면목동', '02-333-3333', 9000, ST_GeomFromText('POINT(70 50)')),
 (NULL, '왕매워 짬뽕 4호점', '서울 광진구 구의동', '02-444-4444', 250, ST_GeomFromText('POINT(80 -10)')),
 (NULL, '왕매워 짬뽕 5호점', '서울 서대문구 북가좌동', '02-555-5555', 1200, ST_GeomFromText('POINT(-10 50)')),
 (NULL, '왕매워 짬뽕 6호점', '서울 강남구 논현동', '02-666-6666', 4000, ST_GeomFromText('POINT(40 -30)')),
 (NULL, '왕매워 짬뽕 7호점', '서울 서초구 서초동', '02-777-7777', 1000, ST_GeomFromText('POINT(30 -70)')),
 (NULL, '왕매워 짬뽕 8호점', '서울 영등포구 당산동', '02-888-8888', 200, ST_GeomFromText('POINT(-40 -50)')),
 (NULL, '왕매워 짬뽕 9호점', '서울 송파구 가락동', '02-999-9999', 600, ST_GeomFromText('POINT(60 -50)'));

SELECT restName, ST_Buffer(restLocation, 3) as '체인점' FROM Restaurant;

-- 지역 관리자 테이블
CREATE TABLE Manager
 (ManagerID int auto_increment PRIMARY KEY,   -- 지역관리자 id
  ManagerName varchar(5),                 -- 지역관리자 이름
  MobilePhone varchar(15),                 -- 지역관리자 전화번호
  Email varchar(40),                      -- 지역관리자 이메일
  AreaName varchar(15),                 -- 담당지역명
  Area geometry SRID 0) ;                       -- 담당지역 폴리곤

INSERT INTO Manager VALUES
 (NULL, '존밴이', '011-123-4567', 'johnbann@kinghot.com',  '서울 동/북부지역',
   ST_GeomFromText('POLYGON((-90 0, -90 90, 90 90, 90 -90, 0 -90, 0  0, -90 0))')) ,
 (NULL, '당탕이', '019-321-7654', 'dangtang@kinghot.com', '서울 서부지역',
   ST_GeomFromText('POLYGON((-90 -90, -90 90, 0 90, 0 -90, -90 -90))'));

SELECT ManagerName, Area as '당탕이' FROM Manager WHERE ManagerName = '당탕이';
SELECT ManagerName, Area as '존밴이' FROM Manager WHERE ManagerName = '존밴이';

-- 서울시의 도로 테이블
CREATE TABLE Road
 (RoadID int auto_increment PRIMARY KEY,  -- 도로 ID
  RoadName varchar(20),           -- 도로 이름
  RoadLine geometry );              -- 도로 선

INSERT INTO Road VALUES
 (NULL, '강변북로',
   ST_GeomFromText('LINESTRING(-70 -70 , -50 -20 , 30 30,  50 70)'));

SELECT RoadName, ST_BUFFER(RoadLine,1) as '강변북로' FROM Road;

SELECT ManagerName, Area as '당탕이' FROM Manager WHERE ManagerName = '당탕이';
SELECT ManagerName, Area as '존밴이' FROM Manager WHERE ManagerName = '존밴이';
SELECT restName, ST_Buffer(restLocation, 3) as '체인점' FROM Restaurant;
SELECT RoadName, ST_BUFFER(RoadLine,1) as '강변북로' FROM Road;


SELECT ManagerName, AreaName, ST_Area(Area) as "면적 m2" FROM Manager;

SELECT M.ManagerName,
       R.restName,
       R.restAddr,
       M.AreaName 
FROM Restaurant R, Manager M
WHERE ST_Contains(M.AREA, R.restLocation) = 1 
ORDER BY M.ManagerName;

SELECT R2.restName,
       R2.restAddr,
       R2.restPhone, 
       ST_Distance(R1.restLocation, R2.restLocation) AS "1호점에서 거리"
FROM Restaurant R1, Restaurant R2
WHERE R1.restName='왕매워 짬뽕 1호점'
ORDER BY ST_Distance(R1.restLocation, R2.restLocation) ;

SELECT Area INTO @eastNorthSeoul FROM Manager WHERE AreaName = '서울 동/북부지역';
SELECT Area INTO @westSeoul FROM Manager WHERE AreaName = '서울 서부지역';
SELECT ST_Union(@eastNorthSeoul, @westSeoul) AS  "모든 관리지역을 합친 범위" ;

SELECT  Area INTO @eastNorthSeoul FROM Manager WHERE ManagerName = '존밴이';
SELECT  Area INTO @westSeoul FROM Manager WHERE ManagerName = '당탕이';
SELECT  ST_Intersection(@eastNorthSeoul, @westSeoul) INTO @crossArea ;
SELECT DISTINCT R.restName AS "중복 관리 지점"
    FROM Restaurant R, Manager M
    WHERE ST_Contains(@crossArea, R.restLocation) = 1;


SELECT  ST_Buffer(RoadLine, 30) INTO @roadBuffer FROM Road;
SELECT R.restName AS "강변북로 30M 이내 지점"
   FROM Restaurant R
   WHERE ST_Contains(@roadBuffer,R.restLocation) = 1;

SELECT  ST_Buffer(RoadLine, 30) INTO @roadBuffer FROM Road;
SELECT  ST_Buffer(RoadLine, 30) as '강변북로 30m' FROM Road;
SELECT  ST_Buffer(R.restLocation, 5) as '체인점' -- 지점을 약간 크게 출력
   FROM Restaurant R
   WHERE ST_Contains(@roadBuffer, R.restLocation) = 1;
SELECT RoadLine as '강변북로' FROM Road;

-- </실습 3> --
























