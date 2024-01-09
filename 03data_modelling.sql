create table card(
                    cardNumber number(10) not null primary key,
                    accountNumber number(12) not null,
                    cardKind varchar2(8),
                    orderDate date,
                    limitAmount number(15),
                    paymentDate date
);

insert into card values (1001, 556677, '비자', sysdate, 50000000, '27/jan/24');
insert into card values (1002, 556678, '비자', sysdate, 50000000, '27/jan/24');
insert into card values (1003, 556679, 'master', sysdate, 50000000, '20/jan/24');
insert into card values (1004, 556680, 'check', sysdate, null, null);
insert into card values (1005, 556681, 'check', sysdate, null, null);

delete from card;

select * from card;

------------------------------------------------------------------------------------------------------
drop table userTbl;
drop table buyTbl;

create table userTbl(
    userName varchar(10) not null primary key,
    birthYear number(10) not null,
    addr varchar(10) not null,
    mobile varchar(36)
);

create table buyTbl(
    userName varchar(10) not null primary key,
    prodName varchar(10) not null,
    price number(10) not null,
    amount number(10) not null,
    constraint userName_fk foreign key(userName) references userTbl(userName)
);

insert into userTbl values('이승기', 1987, '서울', '011-111-1111');
insert into userTbl values('김경호', 1971, '전남', '019-333-3333');

insert into buyTbl values('이승기', '운동화', 10000, 1);
insert into buyTbl values('김경호', '노트북', 10000, 2);
insert into buyTbl values('홍길동', '노트북', 10000, 2);

select * from userTbl;
select * from buyTbl;
---------------------------------------------------------------------------------------------------------------
drop table 예금계좌;
create table 은행(
    은행이름 varchar(20) not null primary key,
    지점 varchar(20) not null
);

create table 예금계좌(
    계좌번호 varchar(20) not null primary key,
    은행이름 varchar(20),
    계좌종류 varchar(20),
    예금잔고 number(20),
    예금개설일자 number(20),
    카드신청여부 varchar(3),
    constraints 은행이름_fk foreign key(은행이름) references 은행(은행이름)
);

insert into 은행 values('국민','강동');
insert into 은행 values('우리','강동');
insert into 은행 values('신한','강동');
insert into 은행 values('기업','강동');
select * from 은행 where 은행이름 = '국민';
delete from 예금계좌 where 계좌번호 = '1115';
delete from 예금계좌 where 계좌번호 = '1116';
insert into 예금계좌 values('1111','국민','적금', 10000, 2024, 'x');
insert into 예금계좌 values('1112','우리','적금', 10000, 2024, 'x');
insert into 예금계좌 values('1113','신한','적금', 10000, 2024, 'x');
insert into 예금계좌 values('1114','기업','적금', 10000, 2024, 'x');
insert into 예금계좌 values('1115','기업','대출', 10000, 2024, 'x');
insert into 예금계좌 values('1116','우리','대출', 10000, 2024, 'x');
select * from 예금계좌;

drop table 고객;
drop table 카드;
create table 고객(
    계좌번호 varchar(20) primary key,
    고객이름 varchar(20),
    주민번호 varchar(20),
    constraints 계좌번호_fk_user foreign key(계좌번호) references 예금계좌(계좌번호)
);

create table 카드(
    계좌번호 varchar(20),
    카드번호 varchar(20) primary key,
    카드종류 varchar(20),
    한도금액 number(10),
    constraints 계좌번호_fk_card foreign key(계좌번호) references 예금계좌(계좌번호)
);

insert into 고객 values('1111','홍길동','99999-99999');
insert into 고객 values('1112','홍길영','99999-99999');

select * from 고객;

insert into 카드 values('1111', '9999', '플레티넘', 10000000);
insert into 카드 values('1111', '9998', '대학생', 200000);
insert into 카드 values('1111', '9997', '대학생', 200000);

select * from 카드;


































