select * from emp;
select * from student;
select * from dept;
select dname from dept;
select empno, ename, sal, job from emp;
select stu_id, stu_name, sex from student;
select empno, ename, sal, sal*12, job from emp;
select empno as �����ȣ, ename as �����, sal as �޿�, sal*12 as ����, sal*12*0.33 as ������, job as ���� from emp;
select empno �����ȣ, ename �����, sal �޿�, sal*12 ����, sal*12*0.33 ������, job ���� from emp;

select * from salgrade;
select grade ���, losal �����ݾ�, losal+1500 �λ������ݾ�, hisal �ִ�ݾ�, hisal+1000 �λ��ִ�ݾ� from salgrade;

--Null �̶�? 0,����� ��� �ƴ� [��Ȯ�� �˼�����] �ǹ�
select * from emp;
select comm, comm+100 from emp;
select comm, nvl(comm, 0) + 100 "�� �� ��" from emp;
select ename || '�� ������ ' || job || '�Դϴ�' as ���� from emp;

select * from student;

select stu_name || '�� ���̴� ' || age || '�Դϴ�' as ���� from student;

select distinct cou_id from student;

select * from emp;
select distinct deptno from emp;

select * from emp where deptno = 20;
select * from emp where job = '���' or job = '����';

select empno �����ȣ, ename �̸�, sal �޿� from emp where sal >= 400;
select empno �����ȣ, ename �̸�, sal �޿�, job ���� from emp where sal >= 400 and job = '����' or job = '����';

select * from emp where hiredate < '05/JAN/01';
select * from emp where hiredate > '05/JAN/01';

select * from emp where hiredate > '06/jan/01' and hiredate < '07/dec/31';

select * from emp where ename like '��%';
select * from emp where ename not like '��%';
select * from emp where ename like '��%' or ename like '��%';

select * from emp where ename like '%��%';
select * from emp where job = '����' or job = '����';
select * from emp where job in ('���','����','����');

select * from emp where sal between 100 and 500;
select * from emp where hiredate between '01-jan-06' and '31-dec-07';

select * from emp where mgr between 1010 and 1020;

select * from emp where comm is null;
select * from emp order by ename asc;

select * from emp order by deptno, sal desc;
select * from emp order by job desc;

select * from emp where job in('����','����');

select * from emp where deptno = 10 or deptno = 30 order by mgr,deptno;

select * from group_star union all select * from single_star;

select * from group_star intersect select * from single_star;
select * from single_star minus select * from group_star;

select * from emp;
select empno,ename,sal from emp where sal <= 300;
select empno,ename,sal from emp where ename = '����ȣ';
select empno,ename,sal from emp where sal != 250 and sal !=300 and sal !=500;
select empno,ename,sal from emp where sal not in(250,300,500);
select empno,ename from emp where ename like '��%' or ename like '%��%';
select ename,mgr from emp where mgr is null;
select ename,deptno,hiredate from emp order by deptno, hiredate;















