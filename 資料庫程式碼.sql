create database 攻略資料庫

go
create table 聯絡資料表
(
	編號 int IDENTITY,
	姓名 nvarchar(20)  not null,
	電話 char(10) not null,
	信箱 nvarchar(20) not null,
	聯絡目的 int  not null,
	CONSTRAINT CHK_NumberColumn CHECK (聯絡目的 >= 1 AND 聯絡目的 <= 4),
	性別 varchar(2) not null,
	CONSTRAINT CHK_gender CHECK (性別 ='男' OR 性別 ='女'),
	內容 nvarchar(100) not null,
	
)
go
insert into 聯絡資料表(姓名,電話,信箱,聯絡目的,性別,內容)
values
('tom','0912345678','tom@example.com',2,'男','asdasdsadsad'),
('louis','0962345678','louis@example.com',2,'男','測試測試'),
('timmy','0912847528','timmy@example.com',2,'男','測試12345788855'),
('jan','0923456781','jan@example.com',2,'男','as148545'),
('alex','0912348579','alex@example.com',2,'女','aqwewqewqeasdsdsadsad');
go

create table 敵人資料表
(
	編號 int primary key,
	名稱 nvarchar(20)  not null,
	圖示 nvarchar(20)  not null,
	HP  int   not null,
	攻擊  int   not null,
	DPS  int   not null,
	KB  int   not null,
	射程 INT not null,
	攻擊頻率  nvarchar(20)  not null,
	跑速 INT not null,
	獎金 INT not null,
)
go
insert into 敵人資料表(編號,名稱,圖示,HP,攻擊,DPS,KB ,射程,攻擊頻率,跑速,獎金)
values
(0,'狗仔','狗仔',90,8,5,3,110,'1.57 秒/下',5,15);
go
create table  貓咪資料表
(
	編號 char primary key,
	名稱 nvarchar(20)  not null,
	圖示 nvarchar(20)  not null,
	HP  int   not null,
	攻擊  int   not null,
	DPS  int   not null,
	KB  int   not null,
	射程 INT not null,
	攻擊頻率  nvarchar(20)  not null,
	跑速 INT not null,
	價格 INT not null,
)
go
insert into 貓咪資料表(編號,名稱,圖示,HP,攻擊,DPS,KB ,射程,攻擊頻率,跑速,價格)
values
('1','貓咪','貓咪',1200,95,77,3,140,'1.23 秒',10,75);
go
create table 關卡資訊
(
編號 char primary key,
消費統率力 int not null,
敵方上限 int not null,
背景長度 int not null,
敵城體力	int not null,
經驗值		int not null,
顯示條件	nvarchar(20) not null,
解放條件	nvarchar(20) not null,
過關獎勵	nvarchar(20) not null,
機率        nvarchar(20) not null,
)
go
insert into  關卡資訊(編號,消費統率力,敵方上限,背景長度,敵城體力,經驗值,顯示條件,解放條件,過關獎勵,機率)
values
(1,200,10,4400,40000,18800,'無限制','通過世界篇第1章','狂亂貓','100%');

go
create table 關卡敵人資訊
(
編號 char primary key,
敵人編號 int ,
FOREIGN KEY (敵人編號) REFERENCES 敵人資料表(編號),
倍率 nvarchar(20) not null,
數量	 nvarchar(20) not null,
塔連動	 nvarchar(20) not null,
初登場	 int not null,
再登場 nvarchar(20) not null,
)
go
insert into  關卡敵人資訊(編號,敵人編號,倍率,數量,塔連動,初登場,再登場)
values
(1,0,'4000%','無限','100%',0,'200~240');