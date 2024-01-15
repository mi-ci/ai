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
 
 delimiter //
 create trigger but after update on usertbl for each row
 begin
 insert into backup_userTbl values(OLD.userid, old.name, old.birthyear, old.addr, old.mobile1, old.mobile2, old.height, old.mdate, '수정', now(), current_user());
