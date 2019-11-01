/*event	이벤트 게시글							
컬럼명	데이터타입	제약타입	기타제약	참조테이블	참조컬럼	설명		
ev_code	varchar2(20)	pk				이벤트 게시글 코드		
ev_title	varchar2(50)	nn				제목		
ev_contents	varchar2(300)					내용		
ev_file	varchar2(100)					첨부파일		
ev_sfile	varchar2(100)					첨부파일 서버 저장용		
ev_date	date	nn				작성일자		
ev_status varchar2(10)  진행중: 'ing', 지난:'past'
ev_hits	number					조회수		*/

create table event(
ev_code varchar2(20)	primary key,						
ev_title	varchar2(50)	not null,
ev_thumbnail  varchar2(300),
ev_sthumbnail varchar2(300),
ev_detail varchar2(300),							
ev_sdetail	varchar2(300),					
ev_date date not null,	
ev_sdate  date not null,
ev_edate  date not null,
ev_status varchar2(10),
ev_hits	number	
);

create sequence sequ_event
  start with 1
  increment by 1;
SELECT * FROM USER_SEQUENCES;

insert into event 
values('ev'|| lpad(sequ_event.nextval, 4,'0'),'이영우 피아노 독주회 기대평 이벤트','','','','',sysdate,'2019.10.15','2019.11.30','ing',28);
insert into event
values('ev'|| lpad(sequ_event.nextval, 4,'0'),'국립현대무용단 검은돌:모래의 기억','','','','',sysdate,'2019.10.15','2019.10.30','past',28);
insert into event 
values('ev'|| lpad(sequ_event.nextval, 4,'0'),'오페라 카르멘 기대평 이벤트','','','','',sysdate,'2019.10.15','2019.11.30','ing',28);
commit;

create table event_reply(
ev_rp_code varchar2(20)	primary key,						
ev_rp_content	nvarchar2(200)	not null,
id varchar2(20) CONSTRAINT event_reply_id_FK REFERENCES general_mem(id),					
ev_rp_date date not null	
);
desc event_reply;
drop table event_reply;
--SEQU 앞에 숫자도 같이 넣는 형식, 기본 네자리 맞춰 '0'으로 채우기
insert into dycgv_board_reply2 values('te'|| lpad(sequ_dycgv_board_reply.nextval, 4,'0'),'시퀀스테스트',sysdate,0,28);

select * from dycgv_board_reply2 order by rdate desc;


drop table event;

/*review	리뷰 게시글							
컬럼명	데이터타입	제약타입	기타제약	참조테이블	참조컬럼	설명		
rv_code	varchar2(20)	pk				리뷰 게시글 코드		
rv_title	varchar2(50)	nn				제목		
rv_contents	varchar2(300)					내용		
rv_file	varchar2(100)					첨부파일		
rv_sfile	varchar2(100)					첨부파일 서버 저장용		
rv_date	date	nn				작성일자		
rv_hits	number	nn				조회수		
id	varchar2(20)					작성자		
rv_cost	number					평점		
*/
create table review(
rv_code	varchar2(20)	primary key,	
rv_title	varchar2(50)	not null,	
rv_contents	nvarchar2(300),	
rv_file	varchar2(100),					
rv_sfile	varchar2(100),		
rv_date	date	not null,					
rv_hits	number not null,	
id	varchar2(20),			
rv_cost	number				
);

create sequence sequ_review
  start with 1
  increment by 1;
  
drop table review;  
/*
notice	공지사항							
컬럼명	데이터타입	제약타입	기타제약	참조테이블	참조컬럼	설명		
nt_code	varchar2(20)	pk				공지사항 코드		
nt_title	varchar2(50)	nn				제목		
nt_contents	nvarchar2(500)					내용		
nt_file	varchar2(100)					첨부파일		
nt_sfile	varchar2(100)					첨부파일 서버 저장용		
nt_date	date	nn				작성일자		
nt_hits	number					조회수		
*/
create table notice(
nt_code	varchar2(20)	primary key,		
nt_title	varchar2(50)	not null,				
nt_contents	nvarchar2(300),					
nt_file	varchar2(100),				
nt_sfile	varchar2(100),						
nt_date	date	not null,					
nt_hits	number	
);

create sequence sequ_notice
  start with 1
  increment by 1;
  
drop table notice;  

/*
news	언론보도						
컬럼명	데이터타입	제약타입	기타제약	참조테이블	참조컬럼	설명	
nw_code	varchar2(20)	pk				뉴스 게시글 코드	
nw_title	varchar2(50)					기사 제목	
nw_date	date					기사 작성일	
nw_press	varchar2(100)					기사 작성 언론사	
nw_url	varchar2(300)					기사 url	
*/
create table news(
nw_code	varchar2(20)	primary key,			
nw_title	varchar2(50),			
nw_date	date,					
nw_press	varchar2(100),					
nw_url	varchar2(300)	
);

create sequence sequ_news
  start with 1
  increment by 1;


SELECT * FROM USER_TABLES;
select * from user_sequences;
commit;

/**
--review_reply	이벤트글 댓글						
컬럼명	데이터타입	제약타입	기타제약	참조테이블	참조컬럼	설명	O
rv_rp_code	varchar2(20)	pk				이벤트글 댓글 코드	
rv_rp_content	nvarchar2(200)	nn				제목	
id	varchar2(20)	fk				아이디	
rv_rp_date	date	nn				작성일자	
rv_rp_depth	varchar2(20)					부모아이디	
*/
create table review_reply(
  rv_rp_code varchar2(20),
  rv_rp_content	nvarchar2(200),
  id	varchar2(20)	CONSTRAINT review_reply_id_fk REFERENCES group_mem(id) ,
  rv_rp_date	date	not null,
  rv_rp_depth	varchar2(20)
);







/*
counsel	1:1상담							
컬럼명	데이터타입	제약타입	기타제약	참조테이블	참조컬럼	설명		
cc_code	varchar2(20)	pk				게시글 코드		
id	varchar2(20)	fk	cascade	group_member	id	회원id		
cc_title	varchar2(50)	nn				제목		
cc_date	date	nn				작성일자		
cc_contents	varchar2(300)	nn				내용		
cc_file	varchar2(100)					첨부파일		
cc_sfile	varchar2(100)					첨부파일 서버 저장용		
cc_acontents	varchar2(300)					답변내용		
cc_adate	date					답변일자(답변유무 판별용)		
*/
create table counsel(
cc_code	varchar2(20)	primary key,				
id	varchar2(20)	constraint counsel_id_fk references group_mem(id) ON DELETE CASCADE,
cc_title	varchar2(50)	not null,		
cc_date	date	not null,					
cc_contents	varchar2(300)	not null,					
cc_file	varchar2(100),						
cc_sfile	varchar2(100),					
cc_acontents	varchar2(300),					
cc_adate	date	
);

create sequence sequ_counsel
  start with 1
  increment by 1;

/*
group_mem	대관자 회원						
컬럼명	데이터타입	제약타입	기타제약	참조테이블	참조컬럼	설명	
id	varchar2(20)	pk				아이디	
pw	varchar2(20)	nn				패스워드	
name	varchar2(20)	nn				담당자명	
email_id	varchar2(40)	nn				담당자 이메일(id)	
email_addr	varchar2(20)	nn				담당자 이메일(주소)	
phone1	varchar2(5)	nn				담당자 연락처1	
phone2	varchar2(5)	nn				담당자 연락처2	
phone3	varchar2(5)	nn				담당자 연락처3	
fax1	varchar2(5)					팩스번호 1	
fax2	varchar2(5)					팩스번호 2	
fax3	varchar2(5)					팩스번호 3	
company	varchar2(50)	nn				회사명	
c_name	varchar2(20)	nn				대표자명	
c_number	number	nn				사업자번호	
c_phone1	varchar2(5)	nn				대표번호 1	
c_phone2	varchar2(5)	nn				대표번호 2	
c_phone3	varchar2(5)	nn				대표번호 3	
c_post_num	number					회사 우편번호	
c_addr	varchar2(100)					회사주소	
c_addr_d	varchar2(100)					회사 상세주소	
*/
create table group_mem(
id	varchar2(20)	primary key,				아이디	
pw	varchar2(20)	not null,				패스워드	
name	varchar2(20)	not null,					담당자명	
email_id	varchar2(40)	not null,					담당자 이메일(id)	
email_addr	varchar2(20)	not null,					담당자 이메일(주소)	
phone1	varchar2(5)	not null,					담당자 연락처1	
phone2	varchar2(5)	not null,					담당자 연락처2	
phone3	varchar2(5)	not null,				담당자 연락처3	
fax1	varchar2(5),					팩스번호 1	
fax2	varchar2(5),					팩스번호 2	
fax3	varchar2(5),					팩스번호 3	
company	varchar2(50)	nn				회사명	
c_name	varchar2(20)	nn				대표자명	
c_number	number	nn				사업자번호	
c_phone1	varchar2(5)	nn				대표번호 1	
c_phone2	varchar2(5)	nn				대표번호 2	
c_phone3	varchar2(5)	nn				대표번호 3	
c_post_num	number					회사 우편번호	
c_addr	varchar2(100)					회사주소	
c_addr_d	varchar2(100)	
);





/*//////////////////////////////////////////////////////////////////////////////////////////////지훈*/
CREATE TABLE CONCERT(
  CONCERT_CODE VARCHAR2(20) PRIMARY KEY,
  C_TITLE VARCHAR2(100) NOT NULL,
  C_SDATE DATE NOT NULL,
  C_EDATE DATE NOT NULL,
  C_TIME NUMBER NOT NULL,
  C_STIME VARCHAR2(150) NOT NULL,
  C_PLACE VARCHAR2(30) NOT NULL,
  C_RATING VARCHAR2(30),
  C_GENRE VARCHAR2(50),
  C_PRICE NUMBER,
  C_HOST VARCHAR2(50),
  C_POSTER VARCHAR2(100) NOT NULL,
  C_SPOSTER VARCHAR2(100) NOT NULL,
  C_INFO_POSTER VARCHAR2(100),
  C_INFO_SPOSTER VARCHAR2(100),
  C_STATUS VARCHAR2(20)  
  
);

CREATE TABLE EXHIBITION(
  EXHIBITION_CODE VARCHAR2(20) PRIMARY KEY,
  E_TITLE VARCHAR2(100) NOT NULL,
  E_SDATE DATE NOT NULL,
  E_EDATE DATE NOT NULL,
  E_ETIME VARCHAR2(30) NOT NULL,
  E_PLACE VARCHAR2(30) NOT NULL,
  E_RATING VARCHAR2(30),
  E_GENRE VARCHAR2(50),
  E_PRICE NUMBER,
  E_HOST VARCHAR2(50),
  E_POSTER VARCHAR2(100) NOT NULL,
  E_SPOSTER VARCHAR2(100) NOT NULL,
  E_INFO_POSTER VARCHAR2(100),
  E_INFO_SPOSTER VARCHAR2(100),
  E_STATUS VARCHAR2(20)  
  
);

select * from ticket_concert;

CREATE TABLE TICKET_CONCERT(
  TC_CODE VARCHAR2(20) CONSTRAINT PK_TC_CODE PRIMARY KEY,
  CONCERT_CODE VARCHAR2(20) CONSTRAINT FK_CONCERT_CODE  REFERENCES CONCERT(CONCERT_CODE)  on delete cascade,
  TC_CDATE DATE,
  TC_CSEATS VARCHAR2(100),
  TC_CANCELC NUMBER,
  TC_CANCELD DATE,
  TC_PRICE NUMBER,
  TC_RECIVE VARCHAR2(2),
  TC_NAME VARCHAR2(20),
  TC_BIRTH DATE,
  TC_TEL NUMBER,
  TC_PHONE NUMBER, 
  TC_EMAILE VARCHAR2(50),
  TC_PAYM VARCHAR2(2),
  TC_PAYW VARCHAR2(20),
  TC_PAYS VARCHAR2(20)

);

/* 콘서트 insert */
insert into concert values( 'c002', '2019 빈 필하모닉 오케스트라 내한공연', TO_CHAR(TO_DATE('2019.11.01', 'YY.MM.DD'), 'YY.MM.DD'), TO_CHAR(TO_DATE('2019-12-01', 'YY.MM.DD'), 'yy.mm.dd'), 90, '17:00|19:00','모짜르트 홀','전체 관람가','콘서트',50000,'짤츠부르크','20190605154537P.gif','20190605154537P.gif',null,null,1);

/* 콘서트 티켓 insert */
insert into TICKET_CONCERT values('tc_001','c001', '2019-11-14', 'A1', 7000, '2019-11-10', 70000,'1','이르미','2000-01-01', '1111','1111','12@NAVER.COM', '1','국민은행', '완료');
/*//////////////////////////////////////////////////////////////////////////////////////////////지훈*/


/*대관테이블*/
--대관테이블
create table rental(
  rental_code varchar2(20) primary key,
  r_case varchar2(20) not null,
  r_title varchar2(300) not null,
  r_status varchar2(20),
  r_place varchar2(30),
  r_sdate date not null,
  r_edate date not null,
  r_opentime varchar2(30),
  r_time varchar2(30),
  r_rhtime varchar2(30),
  r_id varchar2(30),
  r_file varchar2(200),
  r_sfile varchar2(200)
);