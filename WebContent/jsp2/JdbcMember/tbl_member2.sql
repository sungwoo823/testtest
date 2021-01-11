--tbl_member2 테이블 생성
create table tbl_member2(
 member_id varchar2(20) primary key --회원아이디
 ,member_pwd varchar(20) not null --비번
 ,member_name varchar2(20) not null --회원이름
 ,member_phone varchar2(24) --폰번호
 ,member_email varchar2(30) --전자우편
 ,member_regdate date --등록날짜
);

select * from tbl_member2;

--트랜잭션과 잠금(락:LOCK)
select * from emp;

--emp03 복제테이블 생성
create table emp03 as select * from emp;

select * from emp03 order by empno asc;