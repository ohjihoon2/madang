/*event	�̺�Ʈ �Խñ�							
�÷���	������Ÿ��	����Ÿ��	��Ÿ����	�������̺�	�����÷�	����		
ev_code	varchar2(20)	pk				�̺�Ʈ �Խñ� �ڵ�		
ev_title	varchar2(50)	nn				����		
ev_contents	varchar2(300)					����		
ev_file	varchar2(100)					÷������		
ev_sfile	varchar2(100)					÷������ ���� �����		
ev_date	date	nn				�ۼ�����		
ev_status varchar2(10)  ������: 'ing', ����:'past'
ev_hits	number					��ȸ��		*/

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
values('ev'|| lpad(sequ_event.nextval, 4,'0'),'�̿��� �ǾƳ� ����ȸ ����� �̺�Ʈ','','','','',sysdate,'2019.10.15','2019.11.30','ing',28);
insert into event
values('ev'|| lpad(sequ_event.nextval, 4,'0'),'�������빫��� ������:���� ���','','','','',sysdate,'2019.10.15','2019.10.30','past',28);
insert into event 
values('ev'|| lpad(sequ_event.nextval, 4,'0'),'����� ī���� ����� �̺�Ʈ','','','','',sysdate,'2019.10.15','2019.11.30','ing',28);
commit;

create table event_reply(
ev_rp_code varchar2(20)	primary key,						
ev_rp_content	nvarchar2(200)	not null,
id varchar2(20) CONSTRAINT event_reply_id_FK REFERENCES general_mem(id),					
ev_rp_date date not null	
);
desc event_reply;
drop table event_reply;
--SEQU �տ� ���ڵ� ���� �ִ� ����, �⺻ ���ڸ� ���� '0'���� ä���
insert into dycgv_board_reply2 values('te'|| lpad(sequ_dycgv_board_reply.nextval, 4,'0'),'�������׽�Ʈ',sysdate,0,28);

select * from dycgv_board_reply2 order by rdate desc;


drop table event;

/*review	���� �Խñ�							
�÷���	������Ÿ��	����Ÿ��	��Ÿ����	�������̺�	�����÷�	����		
rv_code	varchar2(20)	pk				���� �Խñ� �ڵ�		
rv_title	varchar2(50)	nn				����		
rv_contents	varchar2(300)					����		
rv_file	varchar2(100)					÷������		
rv_sfile	varchar2(100)					÷������ ���� �����		
rv_date	date	nn				�ۼ�����		
rv_hits	number	nn				��ȸ��		
id	varchar2(20)					�ۼ���		
rv_cost	number					����		
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
notice	��������							
�÷���	������Ÿ��	����Ÿ��	��Ÿ����	�������̺�	�����÷�	����		
nt_code	varchar2(20)	pk				�������� �ڵ�		
nt_title	varchar2(50)	nn				����		
nt_contents	nvarchar2(500)					����		
nt_file	varchar2(100)					÷������		
nt_sfile	varchar2(100)					÷������ ���� �����		
nt_date	date	nn				�ۼ�����		
nt_hits	number					��ȸ��		
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
news	��к���						
�÷���	������Ÿ��	����Ÿ��	��Ÿ����	�������̺�	�����÷�	����	
nw_code	varchar2(20)	pk				���� �Խñ� �ڵ�	
nw_title	varchar2(50)					��� ����	
nw_date	date					��� �ۼ���	
nw_press	varchar2(100)					��� �ۼ� ��л�	
nw_url	varchar2(300)					��� url	
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
--review_reply	�̺�Ʈ�� ���						
�÷���	������Ÿ��	����Ÿ��	��Ÿ����	�������̺�	�����÷�	����	O
rv_rp_code	varchar2(20)	pk				�̺�Ʈ�� ��� �ڵ�	
rv_rp_content	nvarchar2(200)	nn				����	
id	varchar2(20)	fk				���̵�	
rv_rp_date	date	nn				�ۼ�����	
rv_rp_depth	varchar2(20)					�θ���̵�	
*/
create table review_reply(
  rv_rp_code varchar2(20),
  rv_rp_content	nvarchar2(200),
  id	varchar2(20)	CONSTRAINT review_reply_id_fk REFERENCES group_mem(id) ,
  rv_rp_date	date	not null,
  rv_rp_depth	varchar2(20)
);







/*
counsel	1:1���							
�÷���	������Ÿ��	����Ÿ��	��Ÿ����	�������̺�	�����÷�	����		
cc_code	varchar2(20)	pk				�Խñ� �ڵ�		
id	varchar2(20)	fk	cascade	group_member	id	ȸ��id		
cc_title	varchar2(50)	nn				����		
cc_date	date	nn				�ۼ�����		
cc_contents	varchar2(300)	nn				����		
cc_file	varchar2(100)					÷������		
cc_sfile	varchar2(100)					÷������ ���� �����		
cc_acontents	varchar2(300)					�亯����		
cc_adate	date					�亯����(�亯���� �Ǻ���)		
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
group_mem	����� ȸ��						
�÷���	������Ÿ��	����Ÿ��	��Ÿ����	�������̺�	�����÷�	����	
id	varchar2(20)	pk				���̵�	
pw	varchar2(20)	nn				�н�����	
name	varchar2(20)	nn				����ڸ�	
email_id	varchar2(40)	nn				����� �̸���(id)	
email_addr	varchar2(20)	nn				����� �̸���(�ּ�)	
phone1	varchar2(5)	nn				����� ����ó1	
phone2	varchar2(5)	nn				����� ����ó2	
phone3	varchar2(5)	nn				����� ����ó3	
fax1	varchar2(5)					�ѽ���ȣ 1	
fax2	varchar2(5)					�ѽ���ȣ 2	
fax3	varchar2(5)					�ѽ���ȣ 3	
company	varchar2(50)	nn				ȸ���	
c_name	varchar2(20)	nn				��ǥ�ڸ�	
c_number	number	nn				����ڹ�ȣ	
c_phone1	varchar2(5)	nn				��ǥ��ȣ 1	
c_phone2	varchar2(5)	nn				��ǥ��ȣ 2	
c_phone3	varchar2(5)	nn				��ǥ��ȣ 3	
c_post_num	number					ȸ�� �����ȣ	
c_addr	varchar2(100)					ȸ���ּ�	
c_addr_d	varchar2(100)					ȸ�� ���ּ�	
*/
create table group_mem(
id	varchar2(20)	primary key,				���̵�	
pw	varchar2(20)	not null,				�н�����	
name	varchar2(20)	not null,					����ڸ�	
email_id	varchar2(40)	not null,					����� �̸���(id)	
email_addr	varchar2(20)	not null,					����� �̸���(�ּ�)	
phone1	varchar2(5)	not null,					����� ����ó1	
phone2	varchar2(5)	not null,					����� ����ó2	
phone3	varchar2(5)	not null,				����� ����ó3	
fax1	varchar2(5),					�ѽ���ȣ 1	
fax2	varchar2(5),					�ѽ���ȣ 2	
fax3	varchar2(5),					�ѽ���ȣ 3	
company	varchar2(50)	nn				ȸ���	
c_name	varchar2(20)	nn				��ǥ�ڸ�	
c_number	number	nn				����ڹ�ȣ	
c_phone1	varchar2(5)	nn				��ǥ��ȣ 1	
c_phone2	varchar2(5)	nn				��ǥ��ȣ 2	
c_phone3	varchar2(5)	nn				��ǥ��ȣ 3	
c_post_num	number					ȸ�� �����ȣ	
c_addr	varchar2(100)					ȸ���ּ�	
c_addr_d	varchar2(100)	
);





/*//////////////////////////////////////////////////////////////////////////////////////////////����*/
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

/* �ܼ�Ʈ insert */
insert into concert values( 'c002', '2019 �� ���ϸ�� ���ɽ�Ʈ�� ���Ѱ���', TO_CHAR(TO_DATE('2019.11.01', 'YY.MM.DD'), 'YY.MM.DD'), TO_CHAR(TO_DATE('2019-12-01', 'YY.MM.DD'), 'yy.mm.dd'), 90, '17:00|19:00','��¥��Ʈ Ȧ','��ü ������','�ܼ�Ʈ',50000,'©���θ�ũ','20190605154537P.gif','20190605154537P.gif',null,null,1);

/* �ܼ�Ʈ Ƽ�� insert */
insert into TICKET_CONCERT values('tc_001','c001', '2019-11-14', 'A1', 7000, '2019-11-10', 70000,'1','�̸���','2000-01-01', '1111','1111','12@NAVER.COM', '1','��������', '�Ϸ�');
/*//////////////////////////////////////////////////////////////////////////////////////////////����*/


/*������̺�*/
--������̺�
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