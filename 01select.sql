select * from emp;
select * from student;
select * from dept;
select dname from dept;
select empno, ename, sal, job from emp;
select stu_id, stu_name, sex from student;
select empno, ename, sal, sal*12, job from emp;
select empno as 사원번호, ename as 사원명, sal as 급여, sal*12 as 연봉, sal*12*0.33 as 연세금, job as 직급 from emp;
select empno 사원번호, ename 사원명, sal 급여, sal*12 연봉, sal*12*0.33 연세금, job 직급 from emp;

select * from salgrade;
select grade 등급, losal 최저금액, losal+1500 인상최저금액, hisal 최대금액, hisal+1000 인상최대금액 from salgrade;

--Null 이란? 0,빈공간 모두 아님 [미확정 알수없는] 의미
select * from emp;
select comm, comm+100 from emp;
select comm, nvl(comm, 0) + 100 "보 너 스" from emp;
select ename || '의 직급은 ' || job || '입니다' as 직급 from emp;

select * from student;

select stu_name || '의 나이는 ' || age || '입니다' as 나이 from student;

select distinct cou_id from student;

select * from emp;
select distinct deptno from emp;

select * from emp where deptno = 20;
select * from emp where job = '사원' or job = '과장';

select empno 사원번호, ename 이름, sal 급여 from emp where sal >= 400;
select empno 사원번호, ename 이름, sal 급여, job 직급 from emp where sal >= 400 and job = '부장' or job = '사장';

select * from emp where hiredate < '05/JAN/01';
select * from emp where hiredate > '05/JAN/01';

select * from emp where hiredate > '06/jan/01' and hiredate < '07/dec/31';

select * from emp where ename like '김%';
select * from emp where ename not like '김%';
select * from emp where ename like '이%' or ename like '최%';

select * from emp where ename like '%동%';
select * from emp where job = '과장' or job = '부장';
select * from emp where job in ('사원','과장','부장');

select * from emp where sal between 100 and 500;
select * from emp where hiredate between '01-jan-06' and '31-dec-07';

select * from emp where mgr between 1010 and 1020;

select * from emp where comm is null;
select * from emp order by ename asc;

select * from emp order by deptno, sal desc;
select * from emp order by job desc;

select * from emp where job in('과장','부장');

select * from emp where deptno = 10 or deptno = 30 order by mgr,deptno;

select * from group_star union all select * from single_star;

select * from group_star intersect select * from single_star;
select * from single_star minus select * from group_star;

select * from emp;
select empno,ename,sal from emp where sal <= 300;
select empno,ename,sal from emp where ename = '오지호';
select empno,ename,sal from emp where sal != 250 and sal !=300 and sal !=500;
select empno,ename,sal from emp where sal not in(250,300,500);
select empno,ename from emp where ename like '김%' or ename like '%기%';
select ename,mgr from emp where mgr is null;
select ename,deptno,hiredate from emp order by deptno, hiredate;















