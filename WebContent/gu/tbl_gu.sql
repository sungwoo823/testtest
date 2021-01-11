--tbl_gu 테이블 생성
create table tbl_gu(
 no int primary key
 ,title varchar2(200) not null
 ,content varchar2(4000) not null
 ,regdate date
);

select * from tbl_gu order by no desc;

--no_seq 시퀀스 생성
create sequence no_seq
start with 1
increment by 1
nocache;

--다음 시퀀스 번호값 확인
select no_seq.nextval from dual;
