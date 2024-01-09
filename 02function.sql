select *from dual;
select -10, abs(-10) from dual;
select 34.5678, floor(34.5678) from dual;
select 34.5678, round(34.5678, 2) from dual;
select trunc(34.5678,2), trunc(34.5678,-1), trunc(34.5678) from dual;
select mod(27,2), mod(27,5), mod(27,7) from dual;

select 'welcome to Oracle', upper('welcome to oracle'), lower('welcome to Oracle'), initcap('welcome to Oracle') from dual;
select length('oracle'), length('����Ŭ') from dual;
select lengthb('oracle'), lengthb('����Ŭ') from dual;

select substr('welcome to oracle', 4, 3) from dual;
select substr('welcome to oracle', 9, 2) from dual;
select substr('����������Ŭ',4,3), substrb('����������Ŭ',4,3) from dual;
select sign(10) from dual;

select * from student;
select stu_email from student;
select upper(stu_email) as �̸��� from student;

select substr(stu_email,1,4) from student where stu_name = '������';
select stu_email from student where stu_id<111 minus select substr(stu_email,-9,9) as ���̵� from student where stu_id < 111;
select instr(stu_email,'@', 1, 1) from student;
select substr(stu_email,1,instr(stu_email, '@')-1) as ���̵� from student;

select * from student;



select lpad('oracle', 20, 'merrycccc') from dual;
select rpad('oracle', 20, 'merrycc') from dual;

select * from emp;
select lpad(job,10,' ') as ���� from emp;

select sysdate as �ð� from dual;
select sysdate, to_char(sysdate,'yyyy mm dd day am hh:mi:ss') from dual;
select * from emp;
select hiredate, to_char(hiredate, 'dd-mm-yyyy') as �Ի��� from emp;

select to_char(12345678, 'L999,999,999') from dual;
select to_date('24-04-11', 'yyyy mm dd') from dual;
select * from emp where hiredate = to_date('2007 04 02', 'yyyy mm dd');
select trunc(sysdate - to_date('20230302', 'yyyymmdd')) from dual;
select sysdate from dual;


select * from emp;
select hiredate from emp where ename = '�ȼ���' - select hiredate from emp where ename = '�ѿ���';
select 070311-070310 from dual;

select '20,000' - '10,000' from dual;
select to_number('20,000', '99,999') - to_number('10,000', '99,999') from dual;
select sysdate -2 from dual;

select ename as �����, trunc((sysdate - hiredate)/365.25, 0) as �ټӳ�, trunc(months_between(sysdate, hiredate),0) as �ټӿ�, trunc(sysdate-hiredate, 0) as �ټ��� from emp;

select next_day(sysdate, 'wednsday') from dual;
select last_day(sysdate) from dual;

select * from emp;
select empno as �����, last_day(hiredate) as �޿��� from emp;

select comm, nvl(comm,0) from emp;



select hiredate, nvl(hiredate, sysdate) from emp;

select empno, nvl(ename, '����') as �����, nvl(job, '���') as ���� from emp;

select ename, sal, nvl2(comm, sal*12+comm, sal*12) from emp;

insert into emp values(1019, null, '�븮', 1003, sysdate, null, null, 20);
insert into emp values(1020, null, '�븮', 1003, sysdate, null, 100, 20);


select coalesce(comm, sal, 0) from emp;

select deptno, decode(deptno, 10, '�渮��', 20, '�λ��', '�����') from emp;

select sex, decode(sex, 'M', '����', 'F', '����') as ���� from student;

select ename, count(ename) from emp;

select count(sal) as �ο�, sum(sal) as �޿�, round(sum(sal)/count(sal)) as ��� from emp;

select ename, comm from emp;

select count(comm) as ���ʽ� from emp;

select distinct job from emp;

select count(distinct job) from emp;

select * from emp order by deptno;

select * from emp where deptno like '10' order by sal desc;

select deptno, round(avg(sal)) as ��� from emp group by deptno order by deptno;

select nvl(job,'�����') as ����, floor(avg(sal)) as �޿���� from emp group by job;

select avg(sal), job from emp where job in('���','�븮','����') group by job;

select deptno, max(sal), min(sal) from emp group by deptno having max(sal) > 700;

select job, round(avg(sal)) from emp group by job having avg(sal) > 500 order by avg(sal);

select * from student;

select stu_name, max(age) from student group by stu_name;

select sex from student;

select sex, max(age) from student group by sex;

select cou_id, round(avg(age)) from student group by cou_id order by cou_id;

select decode(cou_id, 10, '�λ��', 20, '������', '�����') as �μ�, round(avg(age)) from student where sex='M' group by cou_id having avg(age)>25 order by cou_id;

select * from student where sex='M';

select job, round(avg(sal)) from emp where job in('���', '�븮', '����') group by job;

































































