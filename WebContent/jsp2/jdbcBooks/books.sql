--books 테이블 생성
create table books(
 id int primary key --책 시리얼 번호(중복번호가 없다.)
 ,title varchar2(200) --책명
 ,author varchar2(50) --저자명
 ,price number(38) --책가격
 ,qty int --책 수량
);

select * from books order by id asc;

insert into books values(1,'검술의 기초','홍길동',20000,30);
insert into books values(2,'도술 express','홍길동',30000,20);
insert into books values(3,'맨 오브 스틸','수퍼맨',25000,50);
insert into books values(4,'다크 나이트','배트맨',27000,10);
insert into books values(5,'아이언맨3','아이언맨',35000,60);