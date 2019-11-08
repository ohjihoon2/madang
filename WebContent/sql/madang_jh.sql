select * from user_tables;

select * from concert;

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
select * from ticket_concert;
commit;
update concert set C_PLACE ='베토벤홀' where concert_code='c_004';
select * from concert;
select * from user_tables;
SELECT * FROM GENERAL_MEM;
select * from concert;
SELECT * FROM TICKET_CONCERT;
desc concert;
SELECT TO_CHAR(TO_DATE('2019-11-01', 'YY.MM.DD'), 'yy.mm.dd') FROM DUAL;

insert into concert values( 'c001', 'Test title 입니다.', '2019-11-11', '2019-11-20', 70, '17:00|19:00','오지훈홀','15세관람가','시대극',70000,'지훈이네','20190711113234P.gif','20190711113234P.gif',null,null,1);

select * from ticket_concert;
select * from concert;

desc TICKET_CONCERT;
select * from 

-- 진행중인 공연
SELECT * FROM CONCERT WHERE C_STATUS = 1;

insert into concert values( 'c002', '2019 빈 필하모닉 오케스트라 내한공연', TO_CHAR(TO_DATE('2019.11.01', 'YY.MM.DD'), 'YY.MM.DD'), TO_CHAR(TO_DATE('2019-12-01', 'YY.MM.DD'), 'yy.mm.dd'), 90, '17:00|19:00','모짜르트 홀','전체 관람가','콘서트',50000,'짤츠부르크','20190605154537P.gif','20190605154537P.gif',null,null,1);
insert into TICKET_CONCERT values('tc_001','c001', '2019-11-14', 'A1', 7000, '2019-11-10', 70000,'1','이르미','2000-01-01', '1111','1111','12@NAVER.COM', '1','국민은행', '완료');

SELECT CONCERT_CODE, C_TITLE, TO_CHAR(C_SDATE,'YY.MM.DD'), TO_CHAR(C_EDATE, 'YY.MM.DD'), C_PLACE, C_PRICE,  C_POSTER, C_STATUS  FROM CONCERT WHERE C_STATUS = 1;


DELETE FROM CONCERT WHERE CONCERT_CODE = 'c004';

commit;


-------------
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
SELECT CONCERT_CODE, C_TITLE, TO_CHAR(C_SDATE,'YY.MM.DD'), TO_CHAR(C_EDATE, 'YY.MM.DD'), C_PLACE, C_PRICE,  C_POSTER, C_STATUS, TO_CHAR(C_SDATE, 'YYMMDD') as SDAY , TO_CHAR(C_EDATE, 'YYMMDD') as EDAY  from concert order by concert_code asc;
select * from concert;
select * from ticket_concert;

desc concert;
desc ticket_concert

SELECT TO_CHAR(C_EDATE, 'YY-DD-MM')FROM CONCERT;
-- CONCERT 테이블의 문의번호 추가
alter table concert add C_Contact VARCHAR2(30);
SELECT CONCERT_CODE, C_TITLE,TO_CHAR(C_SDATE,'YY-MM-DD'), TO_CHAR(C_EDATE,'YY-MM-DD'),C_TIME, C_STIME,C_STIME,C_RATING,C_GENRE,C_PRICE,C_HOST,C_POSTER,C_SPOSTER,C_INFO_POSTER,C_INFO_SPOSTER,C_STATUS,C_CONTACT, TO_CHAR(C_SDATE, 'YYYY.MM.DD') as SNDAY , TO_CHAR(C_EDATE, 'YYYY.MM.DD') as ENDAY FROM CONCERT WHERE CONCERT_CODE = 'c001';

delete from concert where  concert_code = 'c005';

SELECT * FROM CONCERT;
/* 콘서트 insert */
insert into concert values( 'c_'||LPAD(to_char(SQU_CONCERT_CODE.NEXTVAL),3,'0' ), '2019 빈 필하모닉 오케스트라 내한공연', TO_CHAR(TO_DATE('2019.11.01', 'YY.MM.DD'), 'YY.MM.DD'), TO_CHAR(TO_DATE('2019-12-01', 'YY.MM.DD'), 'yy.mm.dd'), 90, '21:00','모짜르트 홀','전체 관람가','콘서트',50000,'짤츠부르크','20190605154537P.gif','20190605154537P.gif','AntonBrucknerInfo.GIF','AntonBrucknerInfo.GIF',1,'02-255-1245');
insert into concert values( 'c_'||LPAD(to_char(SQU_CONCERT_CODE.NEXTVAL),3,'0' ), '국립현대무용단 <검은 돌: 모래의 기억>', TO_CHAR(TO_DATE('2019.11.01', 'YY.MM.DD'), 'YY.MM.DD'), TO_CHAR(TO_DATE('2019-11-03', 'YY.MM.DD'), 'yy.mm.dd'), 90, '17:00;19:00','모짜르트 홀','전체 관람가','현대무용',50000,'짤츠부르크','20190827133812P.gif','20190827133812P.gif','20191024093458605.gif','20191024093458605.gif',1,'010-1234-1235');
insert into concert values( 'c_'||LPAD(to_char(SQU_CONCERT_CODE.NEXTVAL),3,'0' ), '2019 SAC CUBE 연극 <맨 끝줄 소년>', TO_CHAR(TO_DATE('2019.10.24', 'YY.MM.DD'), 'YY.MM.DD'), TO_CHAR(TO_DATE('2019-12-01', 'YY.MM.DD'), 'yy.mm.dd'), 50, '20:00;22:00','베토벤 홀','전체 관람가','연극',50000,'cube','20190820092734P.gif','20190820092734P.gif','20191015091542531.gif','20191015091542531.gif',1,'010-1111-2222');
insert into concert values( 'c_'||LPAD(to_char(SQU_CONCERT_CODE.NEXTVAL),3,'0' ), '2019 연극 <늙은 부부이야기> ', TO_CHAR(TO_DATE('2019.09.21', 'YY.MM.DD'), 'YY.MM.DD'), TO_CHAR(TO_DATE('2019-10-13', 'YY.MM.DD'), 'yy.mm.dd'), 90, '18:30;21:30','오지훈 홀','전체 관람가','연극',30000,'(유)덕우기획','20190823151229P.gif','20190823151229P.gif','20190831163401061.gif','20190831163401061.gif',1,'02-123-1243');
insert into concert values( 'c_'||LPAD(to_char(SQU_CONCERT_CODE.NEXTVAL),3,'0' ), '국립발레단 호이 랑 ', TO_CHAR(TO_DATE('2019.11.06', 'YY.MM.DD'), 'YY.MM.DD'), TO_CHAR(TO_DATE('2019-11-10', 'YY.MM.DD'), 'yy.mm.dd'), 110, '20:00','베토벤 홀','8세 이상 관람가','무용',30000,'(재)국립발레단','20190907175944P.gif','20190907175944P.gif','20190910171435299.gif','20190910171435299.gif',1,'02-587-6181');
insert into concert values( 'c_'||LPAD(to_char(SQU_CONCERT_CODE.NEXTVAL),3,'0' ), '국립창극단 패왕별희 ', TO_CHAR(TO_DATE('2019.11.09', 'YY.MM.DD'), 'YY.MM.DD'), TO_CHAR(TO_DATE('2019.11.17', 'YY.MM.DD'), 'yy.mm.dd'), 140, '18:30','모짜르트홀','8세 이상 관람가','연극',50000,'국립중앙극장','20190907090844P.gif','20190907090844P.gif','20191026151723979.gif','20191026151723979.gif','02-2280-4114');
commit;
update concert set C_STIME = '19:00;21:00' where concert_code ='c002';

select * from concert;
desc concert;
update concert set C_INFO_POSTER = 'AntonBrucknerInfo.GIF', C_INFO_SPOSTER = 'AntonBrucknerInfo.GIF' where concert_code='c001';
update concert set C_INFO_POSTER = '20191024093458605.gif', C_INFO_SPOSTER = '20191024093458605.gif' where concert_code='c002';
update concert set C_INFO_POSTER = '20191015091542531.gif', C_INFO_SPOSTER = '20191015091542531.gif' where concert_code='c003';
DROP TABLE TICKET_CONCERT;

CREATE TABLE TICKET_CONCERT(
  TC_CODE VARCHAR2(20) CONSTRAINT PK_TC_CODE PRIMARY KEY,
  CONCERT_CODE VARCHAR2(20) CONSTRAINT FK_CONCERT_CODE  REFERENCES CONCERT(CONCERT_CODE),
  TC_CDATE VARCHAR2(50),
  TC_CPLACE VARCHAR2(30),
  TC_CSEAT VARCHAR2(100),
  TC_CANCELC  VARCHAR2(50),
  TC_CANCELD  VARCHAR2(50),
  TC_PRICE NUMBER,
  TC_RECIVE VARCHAR2(2),
  TC_ID VARCHAR2(20) CONSTRAINT FK_TC_ID  REFERENCES GENERAL_MEM(ID),
  TC_NAME VARCHAR2(20),
  TC_BIRTH VARCHAR2(20),
  TC_PHONE1 VARCHAR2(5), 
  TC_PHONE2 VARCHAR2(5), 
  TC_PHONE3 VARCHAR2(5), 
  TC_EMAIL VARCHAR2(50),
  P_CODE VARCHAR2(20) CONSTRAINT FK_P_CODE  REFERENCES PURCHASE(P_CODE) ON DELETE CASCADE,
  TC_TIME DATE
);
DESC PURCHASE;
DROP TABLE TICKET_CONCERT;
select * from ticket_concert;
desc ticket_concert;
DROP TABLE TICKET_CONCERT;
delete from ticket_concert;
alter table ticket_concert add column tc_emaile  to tc_email;
alter table PURCHASE rename column TC_PAYS to TCE_PAYS;
alter table PURCHASE drop column P_STATUS;


select * from purchase;
desc purchase;
insert into purchase values ('p_'||LPAD(to_char(SQU_PURCHASE_CODE.NEXTVAL),3,'0'),'', 'TC_028',sysdate,'1','test','1','KB국민은행','COMPLETE');
/* 콘서트 티켓 insert */
insert into TICKET_CONCERT values('tc_'||LPAD(to_char(SQU_TICKET_CONCERT_CODE.NEXTVAL),3,'0' ),'c_001', '2019-11-14','모짜르트홀', 'A2석 /', 7000, '2019-11-10', 70000,'1','test','김마당', '191023','010','0000','0000','12@NAVER.COM', 'p_'||LPAD(to_char(SQU_PURCHASE_CODE.NEXTVAL),3,'0' ));

SELECT * FROM TICKET_CONCERT;
SELECT * FROM CONCERT;

commit;

desc ticket_concert;


DELETE FROM TICKET_CONCERT WHERE TC_CODE = 'tc_1';
-- TICKET_CONCERT_CODE 시퀀스 
CREATE SEQUENCE SQU_TICKET_CONCERT_CODE
    START WITH 1
    INCREMENT BY 1
;
CREATE SEQUENCE SQU_TICKET_EXHIBITION_CODE
    START WITH 1
    INCREMENT BY 1
;

--CONCERT_CODE 시퀀스
CREATE SEQUENCE SQU_CONCERT_CODE
    START WITH 1
    INCREMENT BY 1
;
CREATE SEQUENCE SQU_PURCHASE_CODE
    START WITH 1
    INCREMENT BY 1
;

SELECT CONCERT_CODE, C_TITLE, TO_CHAR(C_SDATE,'YY.MM.DD'), TO_CHAR(C_EDATE, 'YY.MM.DD'), C_PLACE, C_PRICE,  C_POSTER, C_STATUS, TO_CHAR(C_SDATE, 'YYMMDD') as SDAY , TO_CHAR(C_EDATE, 'YYMMDD') as Eday from concert order by concert_code asc;


SELECT CONCERT_CODE, C_TITLE, TO_CHAR(C_SDATE,'YY.MM.DD'), TO_CHAR(C_EDATE, 'YY.MM.DD'), C_PLACE, C_PRICE,  C_POSTER, C_STATUS, TO_CHAR(C_SDATE, 'YYMMDD') as SDAY , TO_CHAR(C_EDATE, 'YYMMDD') as EDAY  from concert order by concert_code asc;
SELECT CONCERT_CODE, C_TITLE,TO_CHAR(C_SDATE,'YY.MM.DD'), TO_CHAR(C_EDATE,'YY.MM.DD'),C_TIME, C_STIME,C_STIME,C_RATING,C_GENRE,C_PRICE,C_HOST,C_POSTER,C_SPOSTER,C_INFO_POSTER,C_INFO_SPOSTER,C_STATUS,C_CONTACT , TO_CHAR(C_SDATE, 'YYYY.MM.DD') as SNDAY , TO_CHAR(C_EDATE, 'YYYY.MM.DD') as ENDAY  FROM CONCERT WHERE CONCERT_CODE = 'c001';
commit;

create table general_mem (
  id varchar2(20) primary key,
  pw varchar2(20) not null,
  name varchar2(20) not null,
  gender varchar2(2) constraint gender_check check(gender in ('M', 'F')),
  birth date not null,
  email_id varchar2(40) not null,
  email_addr varchar2(20) not null,
  post_num varchar2(5),
  addr varchar2(500),
  addr_d varchar2(50),
  phone1 varchar2(5) not null,
  phone2 varchar2(5) not null,
  phone3 varchar2(5) not null,
  p_comp varchar2(10) not null constraint p_comp_check check(p_comp in ('SKT', 'KT', 'LGU+')),
  accept_email varchar2(2) not null constraint accept_email_check check(accept_email in ('Y', 'N')),
  accept_sms varchar2(2) not null constraint accept_sms_check check(accept_sms in ('Y', 'N')),
  joindate date not null
);

select * from general_mem;
desc general_mem;
insert into general_mem values('test', '0000', '김마당', 'F', '20191023', 'test', 'gmail.com', '13579', '서울시', '역삼동', '010', '1234', '5678', 'SKT', 'N', 'Y', sysdate);


select id, pw, name, gender, to_char(birth,'yyyy-mm-dd') birth, email_id, email_addr, post_num, addr, addr_d, phone1, phone2, phone3, p_comp, accept_email, accept_sms, joindate from general_mem where id='test';
select name, to_char(birth, 'yymmdd'), phone1, phone2, phone3, email_addr from general_mem where id = 'test';
select name, to_char(birth, 'yymmdd') birth, phone1, phone2, phone3, email_addr from general_mem where id = 'test';


SELECT CONCERT_CODE, C_TITLE,TO_CHAR(C_SDATE,'YY.MM.DD'), TO_CHAR(C_EDATE,'YY.MM.DD'),C_TIME, C_STIME,C_STIME,C_RATING,C_GENRE,C_PRICE,C_HOST,C_POSTER,C_SPOSTER,C_INFO_POSTER,C_INFO_SPOSTER,C_STATUS,C_CONTACT , TO_CHAR(C_SDATE, 'YYYY.MM.DD') as SNDAY , TO_CHAR(C_EDATE, 'YYYY.MM.DD') as ENDAY  FROM CONCERT WHERE CONCERT_CODE = 'c_002';

commit;

-- drop table ticket_concert;
select * from concert;
select * from ticket_concert;
desc ticket_concert;

-- delete from ticket_concert;
--
select tc_seat_list from 
(select rownum rno, tc1 || tc2 tc_seat_list from  (select t1.tc_cseat tc1, t2.tc_cseat tc2  from ticket_concert t1, ticket_concert t2
where t1.concert_code=t2.concert_code
and t1.concert_code = 'c_001' and t1.tc_cdate ='2019년 11월 05일 21:00'
)) where rno=1
;

--
select tc_seat_list from 
(select rownum rno, tc1 || tc2 || tc3 tc_seat_list from  (select t1.tc_cseat tc1, t2.tc_cseat tc2, t3.tc_cseat tc3  from ticket_concert t1, ticket_concert t2, ticket_concert t3
where t1.concert_code=t2.concert_code and t1.concert_code = t3.concert_code 
and t1.concert_code = 'c_001' and t1.tc_cdate ='2019년 11월 05일 21:00'
)) where rno=1
;

--

select tc_cseat from ticket_concert
where concert_code = 'c_001' and tc_cdate ='2019년 11월 05일 21:00' 
and tc_code='tc_021'
union 
select tc_cseat from ticket_concert
where concert_code = 'c_001' and tc_cdate ='2019년 11월 05일 21:00' 
and tc_code='tc_022' ;

select * from ticket_concert ;

update ticket_concert set tc_cseat='B7석 /C5석 /' WHERE TC_CODE='tc_021';
commit;


SELECT 
            LISTAGG(TC_CSEAT,'') 
                WITHIN GROUP(ORDER BY TC_CDATE ) AS TC_CSEAT            
FROM TICKET_CONCERT
WHERE CONCERT_CODE='c_001' AND TC_CDATE='2019년 11월 05일 21:00';


select * from concert;
select * from ticket_concert;
DESC TICKET_CONCERT;

  alter table ticket_concert add (TC_PAYS varchar2(20));
alter table ticket_concert drop column p_cod;

select * from user_tables;

--update ticket_concert set p_code =
select * from EXHIBITION;
desc EXHIBITION;
commit;

desc purchase;

-- 결제
create table purchase(
  p_code	varchar2(20) CONSTRAINT PK_P_CODE PRIMARY KEY,
  te_code	varchar2(20) CONSTRAINT FK_TE_CODE REFERENCES EXHIBITION(EXHIBITION_CODE)  on delete cascade,
  tc_code	varchar2(20) CONSTRAINT FK_TC_CODE  REFERENCES CONCERT(CONCERT_CODE)  on delete cascade,
  p_date	date,
  p_status	varchar2(20),
  mem_id	varchar2(20),
  tc_paym	varchar2(2),
  tc_payw	varchar2(20),
  tc_pays	varchar2(20)
);

SELECT * FROM USER_TABLES;
SELECT * FROM GENERAL_MEM;

-- 임시로 만들어서 사용중

create table purchase(
  p_code	varchar2(20) CONSTRAINT PK_P_CODE PRIMARY KEY,
  mem_id	varchar2(20) CONSTRAINT FK_P_ID REFERENCES GENERAL_MEM(ID),
  tce_code	varchar2(20),
  tc_cdate 	varchar2(50),
  tc_paym	varchar2(2),
  tc_payw	varchar2(20),
  tc_pays	varchar2(20),
  p_date	date
);
drop table purchase;
SELECT * FROM CONCERT;
select * from ticket_concert; 
SELECT * FROM PURCHASE;

SELECT CONCERT_CODE, C_TITLE,TO_CHAR(C_SDATE,'YY.MM.DD'), TO_CHAR(C_EDATE,'YY.MM.DD'),C_TIME, C_STIME,C_PLACE,C_RATING,C_GENRE,C_PRICE,C_HOST,C_POSTER,C_SPOSTER,C_INFO_POSTER,C_INFO_SPOSTER,C_STATUS,C_CONTACT , TO_CHAR(C_SDATE, 'YYYY-MM-DD') as SNDAY , TO_CHAR(C_EDATE, 'YYYY-MM-DD') as ENDAY  FROM CONCERT WHERE CONCERT_CODE = 'c_002';

commit;
select * from purchase;
UPDATE PURCHASE SET TCE_CODE = 'c_001' WHERE P_CODE='p_011';l
desc ticket_CONCERT;

drop table purchase;



select * from purchase;
select * from TICKET_concert;
desc purchase;
DESC TICKET_CONCERT;
insert into TICKET_CONCERT values('tc_'||LPAD(to_char(SQU_TICKET_CONCERT_CODE.NEXTVAL),3,'0' ),'c_001', '2019-11-14','모짜르트홀', 'A2석 /', 7000, '2019-11-10', 70000,'1','test','김마당', '191023','010','0000','0000','12@NAVER.COM', 'p_'||LPAD(to_char(SQU_PURCHASE_CODE.NEXTVAL),3,'0' ));
insert into purchase values('p_'||LPAD(to_char(SQU_PURCHASE_CODE.NEXTVAL),3,'0'),'test','c_001','	2019년 11월 06일 21:00','1','KB국민은행','COMPLETE',SYSDATE);

select *from event;

--
INSERT ALL
INTO TICKET_CONCERT VALUES('tc_'||LPAD(to_char(SQU_TICKET_CONCERT_CODE.NEXTVAL),3,'0' ),'c_001','2019년 11월 06일 21:00','모짜르트홀', 'A2석 /', 7000, '2019-11-10', 70000,'1','test','김마당', '191023','010','0000','0000','12@NAVER.COM',P_CODE)
SELECT P_CODE
FROM PURCHASE
WHERE P_CODE ='p_020';
--
INSERT ALL
INTO EMP_99 VALUES(EMPNO,'HONG',HIREDATE)
SELECT EMPNO, HIREDATE
FROM EMP
WHERE EMPNO=7369;


--
INSERT ALL
INTO ticket_concert(tc_code, CONCERT_CODE,p_code)
VALUES(SQU_TICKET_CONCERT_CODE.nextval,'c_001',p_code)
select rownum rno, p_code
from (SELECT * FROM PURCHASE
WHERE CE_CODE='c_001'
ORDER BY P_CODE DESC)
where rownum=1;

select * from purchase;
select * from concert;
select * from ticket_concert;
select * from GENERAL_MEM;

delete from ticket_concert where tc_code= 'tc_039';

desc purchase;
desc ticket_concert;
commit;

----------------------------------------------------- concert 끝 ----------------------------------
select * from concert;
select * from exhibition;
desc exhibition;

CREATE SEQUENCE SQU_EXHIBITION_CODE
    START WITH 1
    INCREMENT BY 1
;
select * from exhibition;
insert into exhibition values( 'e_'||LPAD(to_char(SQU_CONCERT_CODE.NEXTVAL),3,'0' ),'민화의 비상(飛上)',TO_CHAR(TO_DATE('2019.11.02', 'YY.MM.DD'), 'YY.MM.DD'), TO_CHAR(TO_DATE('2019-11-09', 'YY.MM.DD'), 'yy.mm.dd'), '11:00-19:00 (입장마감 6시)', '다빈치관','	전체관람','전시',5000, '조선민화박물관','20191022183207P.gif','20191022183207P.gif','민화의 비상_info.PNG','민화의 비상_info.PNG' );
alter table concert drop column C_STATUS;
alter table exhibition add e_contact varchar2(50);
alter table exhibition MODIFY(e_host varchar2(500));
desc exhibition;
commit;

update exhibition set e_contact = '061-433-9770';

select * from exhibition;
desc exhibition;
insert into exhibition values( 'e_'||LPAD(to_char(SQU_CONCERT_CODE.NEXTVAL),3,'0' ),'민화의 비상(飛上)',TO_CHAR(TO_DATE('2019.11.02', 'YY.MM.DD'), 'YY.MM.DD'), TO_CHAR(TO_DATE('2019-11-09', 'YY.MM.DD'), 'yy.mm.dd'), '11:00-19:00 (입장마감 6시)', '다빈치관','	전체관람','전시',5000, '조선민화박물관','20191022183207P.gif','20191022183207P.gif','민화의 비상_info.PNG','민화의 비상_info.PNG', '061-433-9770');
insert into exhibition values( 'e_'||LPAD(to_char(SQU_CONCERT_CODE.NEXTVAL),3,'0' ),'매그넘 인 파리',TO_CHAR(TO_DATE('2019.09.25', 'YY.MM.DD'), 'YY.MM.DD'), TO_CHAR(TO_DATE('2020.02.09', 'YY.MM.DD'), 'yy.mm.dd'), '	[9월-10월]11:00~20:00 / [11월-12월]11:00~19:00 / [1월-2월]10:00~19:00', '피카소관','	전체관람','전시',15000, '(주)가우디움어소시에이츠, KBS한국방송, MBC','20190827161451P.gif','20190827161451P.gif','20190905114557929.gif','20190905114557929.gif','061-433-9770');
insert into exhibition values( 'e_'||LPAD(to_char(SQU_CONCERT_CODE.NEXTVAL),3,'0' ),'서울국제조각페스타 2019',TO_CHAR(TO_DATE('	2019.10.26', 'YY.MM.DD'), 'YY.MM.DD'), TO_CHAR(TO_DATE('2019.11.03', 'YY.MM.DD'), 'yy.mm.dd'), '	10월 11:00-20:00 (입장마감 19시) / 11월 11:00-19:00 (입장마감 18시)', '오지훈관','	전체관람','전시',12000, '	한국조각가협회','20191016171813P.gif','20191016171813P.gif','서울국제조각페스타 2019_info.PNG','서울국제조각페스타 2019_info.PNG' ,'061-433-9770');
insert into exhibition values( 'e_'||LPAD(to_char(SQU_CONCERT_CODE.NEXTVAL),3,'0' ),'서울국제조각페스타 2019',TO_CHAR(TO_DATE('	2019.10.26', 'YY.MM.DD'), 'YY.MM.DD'), TO_CHAR(TO_DATE('2019.11.03', 'YY.MM.DD'), 'yy.mm.dd'), '	10월 11:00-20:00 (입장마감 19시) / 11월 11:00-19:00 (입장마감 18시)', '오지훈관','	전체관람','전시',12000, '	한국조각가협회','20191016171813P.gif','20191016171813P.gif','서울국제조각페스타 2019_info.PNG','서울국제조각페스타 2019_info.PNG' ,'061-433-9770');
insert into exhibition values( 'e_'||LPAD(to_char(SQU_CONCERT_CODE.NEXTVAL),3,'0' ),'2019 목우미술축제',TO_CHAR(TO_DATE('	2019.11.07', 'YY.MM.DD'), 'YY.MM.DD'), TO_CHAR(TO_DATE('2019.11.13', 'YY.MM.DD'), 'yy.mm.dd'), '	11:00-19:00', '다빈치관','	전체관람','전시','1000', '	(사)목우회','20191016172342P.gif','20191016172342P.gif','목우미술축제_info.PNG','목우미술축제_info.PNG' ,'02-508-6510');
insert into exhibition values( 'e_'||LPAD(to_char(SQU_CONCERT_CODE.NEXTVAL),3,'0' ),'서예, 그 새로운 탄생',TO_CHAR(TO_DATE('		2019.11.08', 'YY.MM.DD'), 'YY.MM.DD'), TO_CHAR(TO_DATE('2019.12.29', 'YY.MM.DD'), 'yy.mm.dd'), '		11:00-19:00 (입장마감 18시)', '오지훈관','	전체관람','전시','5000', '	예술의전당','20191102175954P.gif','20191102175954P.gif','20191030133955011.gif','20191030133955011.gif' ,'02-580-1300');
insert into exhibition values( 'e_'||LPAD(to_char(SQU_CONCERT_CODE.NEXTVAL),3,'0' ),'제25회 마니프서울국제아트페어',TO_CHAR(TO_DATE('			2019.10.02', 'YY.MM.DD'), 'YY.MM.DD'), TO_CHAR(TO_DATE('	2019.11.02', 'YY.MM.DD'), 'yy.mm.dd'), '		11:00-20:00 (입장마감 18시)', '피카소관','	전체관람','전시','8000', '	마니프조직위원회','20190921171245P.gif','20190921171245P.gif','20190927140943359.gif','20190927140943359.gif' ,'02-514-9292');

commit;
select * from ticket_concert;
select * from purchase;
desc ticket_concert;
desc purchase;
-- tc_time 추가 
alter table ticket_concert add  tc_time date;
commit;

desc concert;
select * from ticket_concert;
select * from exhibition;

SELECT * FROM USER_TABLES;

desc exhibition;
select exhibition_code, e_title, e_sdate,   e_edate, e_etime, e_place, e_rating, e_genre, e_price, e_host, e_poster, e_sposter, e_info_poster, e_info_sposter, e_contact from exhibition where exhibition_code='e_007';
commit;


alter table ticket_concert MODIFY (P_CODE VARCHAR2(20) REFERENCES PURCHASE(P_CODE) ON DELETE CASCADE);

DROP TABLE PURCHASE;

select * from purchase;
select * from ticket_concert;



DESC TICKET_CONCERT;

commit;
---최종본
CREATE TABLE TICKET_CONCERT(
  TC_CODE VARCHAR2(20) CONSTRAINT PK_TC_CODE PRIMARY KEY,
  CONCERT_CODE VARCHAR2(20) CONSTRAINT FK_CONCERT_CODE  REFERENCES CONCERT(CONCERT_CODE),
  TC_CDATE VARCHAR2(50),
  TC_CPLACE VARCHAR2(30),
  TC_CSEAT VARCHAR2(100),
  TC_CANCELC  VARCHAR2(50),
  TC_CANCELD  VARCHAR2(50),
  TC_PRICE NUMBER,
  TC_RECIVE VARCHAR2(2),
  TC_ID VARCHAR2(20) CONSTRAINT FK_TC_ID  REFERENCES GENERAL_MEM(ID),
  TC_NAME VARCHAR2(20),
  TC_BIRTH VARCHAR2(20),
  TC_PHONE1 VARCHAR2(5), 
  TC_PHONE2 VARCHAR2(5), 
  TC_PHONE3 VARCHAR2(5), 
  TC_EMAIL VARCHAR2(50),
  P_CODE VARCHAR2(20) CONSTRAINT FK_P_CODE  REFERENCES PURCHASE(P_CODE) ON DELETE CASCADE,
  TC_TIME DATE
);

COMMIT;

select * from purchase p, ticket_concert t, concert c where p.p_code=t.p_code and t.concert_code=c.concert_code;

select * from purchase;
select * from ticket_concert;


--tc_061 p_047: tce_code(c_001) tc_cdate(2019 11 08 21:00)
select * from ticket_concert where tc_id='test' and tc_code='tc_061';
select * from purchase where mem_id='test' and p_code='p_047';

delete from ticket_concert where tc_id='test' and tc_code='tc_061';
rollback;

select*from  exhibition;
select exhibition_code,e_title, e_sdate,  e_edate, e_etime, e_place, e_rating, e_genre, e_price, e_host, e_poster, e_sposter, e_info_poster, e_info_sposter, e_contact,TO_CHAR(E_SDATE, 'YYMMDD') as SDAY , TO_CHAR(E_EDATE, 'YYMMDD') as EDAY from exhibition where exhibition_code='e_007';
select * from concert;

-- TE 완성형
create table ticket_exhibition(
  te_code	varchar2(20) CONSTRAINT PK_TE_CODE PRIMARY KEY,
  exhibition_code	varchar2(20) CONSTRAINT FK_EXHIBITION_CODE  REFERENCES EXHIBITION(EXHIBITION_CODE)  on delete cascade,
  te_cplace	varchar2(30),
  te_cticket	number,
  te_cancelc	number,
  te_canceld	date,
  te_price	number,
  te_recive	varchar2(2),
  te_id	varchar2(20),
  te_name	varchar2(20),
  te_birth	date,
  te_phone1	varchar2(5),
  te_phone2	varchar2(5),
  te_phone3	varchar2(5),
  te_email	varchar2(50),
  p_code	varchar2(20) CONSTRAINT FK_TE_P_CODE  REFERENCES PURCHASE(P_CODE) ON DELETE CASCADE,
  te_time	date
);

  COMMIT;

DESC TICKET_EXHIBITION;
SELECT * FROM TICKET_exhibition;
select * from purchase;
select TO_DATE('2019-11-08 21:00', YYYY-MM-DD) from dual;

select * from concert;

desc concert;
desc TICKET_CONCERT;
desc exhibition;
desc ticket_exhibition;
desc purchase;