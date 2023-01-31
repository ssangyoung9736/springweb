CREATE TABLE member200(
	id varchar2(100) PRIMARY KEY,
	pass varchar2(100),
	name varchar2(100),
	auth varchar2(100),
	point number
);

insert into member200 values('himan','7777','홍길동','관리자',1000);
insert into member200 values('higirl','8888','홍현아','관리자',1000);
insert into member200 values('goodMan','9999','정수라','normal', 3000);
insert into member200 values('helloMan','8888','오영심','quest', 3000);
SELECT * FROM member200;