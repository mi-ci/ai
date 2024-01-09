create table dept_mission(
    dno number(2),
    dname varchar(14),
    loc varchar(13)
);

desc dept_mission;

drop table emp_mission;

create table emp_mission(
    eno number(4) not null,
    ename varchar2(10),
    dno number(2)
);

desc emp_mission;
drop table emp01;
create table emp01(
    empno number(4),
    ename varchar2(14),
    sal number(7,3)
);
desc emp01;

alter table emp01 add(birth date);

alter table emp_mission add(birth date, addr varchar(20));

alter table emp01 modify(ename varchar(20));

alter table emp_mission modify(ename varchar(20));

alter table emp01 drop column birth;

alter table emp_mission drop column dno;

rename emp_mission to emp_mi;

desc emp_mi;

drop table emp_mi;

select * from emp;

create table emp_copy2 as select empno from emp;

select * from emp_copy;

desc emp_copy;

desc emp_copy2;

alter table emp_copy drop column comm;

alter table emp_copy rename column hiredate to hire;

delete from emp_copy;

select * from user_tables;
select * from user_views;

select * from all_tables;
select * from all_tables where table_name = 'EMP';

select * from dba_tables;

--dml문 insert, update, delete문 레코드 삽입, 수정 삭제하기

select * from emp01;
insert into emp01 values(1000, '홍길동', 123.5);
insert into emp01(empno, sal, ename) values(2000, 300, '이순신');
insert into emp01(empno, ename) values(3000, '김수민');
insert into emp01(sal) values(250);
insert into emp01(ename) values('');
select * from emp01;
delete from emp01 where sal = 250;
desc emp01;
alter table emp01 add hire date;
insert into emp01(ename, empno, sal, hire) values('박수미', 1010, 80, '09/jan/23');
insert into emp01(empno, ename, sal, hire) values(1011, '최경수', 0, sysdate);

update emp01 set sal = 200 where ename = '홍길동';
update emp01 set sal = sal + 100 where empno = 2000;

update emp01 set sal = nvl(sal,0) + 200;

delete from emp01 where sal < 4000;

delete from emp01;
rollback;
select * from emp01;
commit;
rollback; 
-- 컷밋 전으로 되돌림

update emp01 set sal = sal + 200;
desc dept;
select * from dept;
insert into dept values(10, 'test', 'test');
alter table dept modify dname varchar2(20) not null;


create table pTab(
    code number(4) primary key,
    name varchar2(14)
);

desc pTab;
select * from user_constraints where table_name = 'PTAB';
select * from pTab;
alter table pTab modify name varchar2(14) not null;

insert into ptab values(1010,'a');
insert into ptab values(1010,'b');
insert into ptab values(1011,null);
alter table ptab add id varchar2(10);
alter table ptab modify id unique;
select * from user_constraints where table_name = 'PTAB';
insert into ptab values(1012,'e','a100');
insert into ptab values(1013,'d','a100');















































