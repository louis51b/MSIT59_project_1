create database �𲤸�Ʈw

go
create table �p����ƪ�
(
	�s�� int IDENTITY,
	�m�W nvarchar(20)  not null,
	�q�� char(10) not null,
	�H�c nvarchar(20) not null,
	�p���ت� int  not null,
	CONSTRAINT CHK_NumberColumn CHECK (�p���ت� >= 1 AND �p���ت� <= 4),
	�ʧO varchar(2) not null,
	CONSTRAINT CHK_gender CHECK (�ʧO ='�k' OR �ʧO ='�k'),
	���e nvarchar(100) not null,
	
)
go
insert into �p����ƪ�(�m�W,�q��,�H�c,�p���ت�,�ʧO,���e)
values
('tom','0912345678','tom@example.com',2,'�k','asdasdsadsad'),
('louis','0962345678','louis@example.com',2,'�k','���մ���'),
('timmy','0912847528','timmy@example.com',2,'�k','����12345788855'),
('jan','0923456781','jan@example.com',2,'�k','as148545'),
('alex','0912348579','alex@example.com',2,'�k','aqwewqewqeasdsdsadsad');
go

create table �ĤH��ƪ�
(
	�s�� int primary key,
	�W�� nvarchar(20)  not null,
	�ϥ� nvarchar(20)  not null,
	HP  int   not null,
	����  int   not null,
	DPS  int   not null,
	KB  int   not null,
	�g�{ INT not null,
	�����W�v  nvarchar(20)  not null,
	�]�t INT not null,
	���� INT not null,
)
go
insert into �ĤH��ƪ�(�s��,�W��,�ϥ�,HP,����,DPS,KB ,�g�{,�����W�v,�]�t,����)
values
(0,'���J','���J',90,8,5,3,110,'1.57 ��/�U',5,15);
go
create table  �߫}��ƪ�
(
	�s�� char primary key,
	�W�� nvarchar(20)  not null,
	�ϥ� nvarchar(20)  not null,
	HP  int   not null,
	����  int   not null,
	DPS  int   not null,
	KB  int   not null,
	�g�{ INT not null,
	�����W�v  nvarchar(20)  not null,
	�]�t INT not null,
	���� INT not null,
)
go
insert into �߫}��ƪ�(�s��,�W��,�ϥ�,HP,����,DPS,KB ,�g�{,�����W�v,�]�t,����)
values
('1','�߫}','�߫}',1200,95,77,3,140,'1.23 ��',10,75);
go
create table ���d��T
(
�s�� char primary key,
���O�βv�O int not null,
�Ĥ�W�� int not null,
�I������ int not null,
�ī���O	int not null,
�g���		int not null,
��ܱ���	nvarchar(20) not null,
�ѩ����	nvarchar(20) not null,
�L�����y	nvarchar(20) not null,
���v        nvarchar(20) not null,
)
go
insert into  ���d��T(�s��,���O�βv�O,�Ĥ�W��,�I������,�ī���O,�g���,��ܱ���,�ѩ����,�L�����y,���v)
values
(1,200,10,4400,40000,18800,'�L����','�q�L�@�ɽg��1��','�g�ÿ�','100%');

go
create table ���d�ĤH��T
(
�s�� char primary key,
�ĤH�s�� int ,
FOREIGN KEY (�ĤH�s��) REFERENCES �ĤH��ƪ�(�s��),
���v nvarchar(20) not null,
�ƶq	 nvarchar(20) not null,
��s��	 nvarchar(20) not null,
��n��	 int not null,
�A�n�� nvarchar(20) not null,
)
go
insert into  ���d�ĤH��T(�s��,�ĤH�s��,���v,�ƶq,��s��,��n��,�A�n��)
values
(1,0,'4000%','�L��','100%',0,'200~240');