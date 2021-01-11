--tbl_board3 테이블 생성
create table tbl_board3(
 b_no number(38) primary key--게시판 번호
 ,b_name varchar2(100) not null --작성자
 ,b_title varchar2(200) not null --제목
 ,b_pwd varchar2(20) not null --비번
 ,b_cont varchar2(4000) not null --글내용
 ,b_hit number(38) default 0 --조회수
 ,b_date date --글등록날짜
);

select * from tbl_board3 order by b_no desc;

--b_no_seq3 시퀀스 생성
create sequence b_no_seq3
start with 1
increment by 1
nocache;

select b_no_seq3.nextval from dual;