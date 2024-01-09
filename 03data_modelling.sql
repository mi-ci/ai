create table card(
                    cardNumber number(10) not null primary key,
                    accountNumber number(12) not null,
                    cardKind varchar2(8),
                    orderDate date,
                    limitAmount number(15),
                    paymentDate date
);

insert into card values (1001, 556677, '����', sysdate, 50000000, '27/jan/24');
insert into card values (1002, 556678, '����', sysdate, 50000000, '27/jan/24');
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

insert into userTbl values('�̽±�', 1987, '����', '011-111-1111');
insert into userTbl values('���ȣ', 1971, '����', '019-333-3333');

insert into buyTbl values('�̽±�', '�ȭ', 10000, 1);
insert into buyTbl values('���ȣ', '��Ʈ��', 10000, 2);
insert into buyTbl values('ȫ�浿', '��Ʈ��', 10000, 2);

select * from userTbl;
select * from buyTbl;
---------------------------------------------------------------------------------------------------------------
drop table ���ݰ���;
create table ����(
    �����̸� varchar(20) not null primary key,
    ���� varchar(20) not null
);

create table ���ݰ���(
    ���¹�ȣ varchar(20) not null primary key,
    �����̸� varchar(20),
    �������� varchar(20),
    �����ܰ� number(20),
    ���ݰ������� number(20),
    ī���û���� varchar(3),
    constraints �����̸�_fk foreign key(�����̸�) references ����(�����̸�)
);

insert into ���� values('����','����');
insert into ���� values('�츮','����');
insert into ���� values('����','����');
insert into ���� values('���','����');
select * from ���� where �����̸� = '����';
delete from ���ݰ��� where ���¹�ȣ = '1115';
delete from ���ݰ��� where ���¹�ȣ = '1116';
insert into ���ݰ��� values('1111','����','����', 10000, 2024, 'x');
insert into ���ݰ��� values('1112','�츮','����', 10000, 2024, 'x');
insert into ���ݰ��� values('1113','����','����', 10000, 2024, 'x');
insert into ���ݰ��� values('1114','���','����', 10000, 2024, 'x');
insert into ���ݰ��� values('1115','���','����', 10000, 2024, 'x');
insert into ���ݰ��� values('1116','�츮','����', 10000, 2024, 'x');
select * from ���ݰ���;

drop table ��;
drop table ī��;
create table ��(
    ���¹�ȣ varchar(20) primary key,
    ���̸� varchar(20),
    �ֹι�ȣ varchar(20),
    constraints ���¹�ȣ_fk_user foreign key(���¹�ȣ) references ���ݰ���(���¹�ȣ)
);

create table ī��(
    ���¹�ȣ varchar(20),
    ī���ȣ varchar(20) primary key,
    ī������ varchar(20),
    �ѵ��ݾ� number(10),
    constraints ���¹�ȣ_fk_card foreign key(���¹�ȣ) references ���ݰ���(���¹�ȣ)
);

insert into �� values('1111','ȫ�浿','99999-99999');
insert into �� values('1112','ȫ�濵','99999-99999');

select * from ��;

insert into ī�� values('1111', '9999', '�÷�Ƽ��', 10000000);
insert into ī�� values('1111', '9998', '���л�', 200000);
insert into ī�� values('1111', '9997', '���л�', 200000);

select * from ī��;


































