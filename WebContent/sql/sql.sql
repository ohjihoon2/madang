/*event	�̺�Ʈ �Խñ�							
�÷���	������Ÿ��	����Ÿ��	��Ÿ����	�������̺�	�����÷�	����		
ev_code	varchar2(20)	pk				�̺�Ʈ �Խñ� �ڵ�		
ev_title	varchar2(50)	nn				����		
ev_contents	varchar2(300)					����		
ev_file	varchar2(100)					÷������		
ev_sfile	varchar2(100)					÷������ ���� �����		
ev_date	date	nn				�ۼ�����		
ev_hits	number					��ȸ��		*/
create table event(
ev_code	varchar2(20)	primary key,						
ev_title	varchar2(50)	not null,
ev_thumbnail	varchar2(300),
ev_sthumbnail	varchar2(300),
ev_detail	varchar2(300),							
ev_sdetail	varchar2(300),					
ev_date	date not null,	
ev_status varchar2(10),
ev_hits	number	
);

create sequence sequ_event
  start with 1
  increment by 1;
SELECT * FROM USER_SEQUENCES;

--SEQU �տ� ���ڵ� ���� �ִ� ����, �⺻ ���ڸ� ���� '0'���� ä���
insert into dycgv_board_reply2 values('te'|| lpad(sequ_dycgv_board_reply.nextval, 4,'0'),'�������׽�Ʈ',sysdate,0,28);

select * from dycgv_board_reply2 order by rdate desc;


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
rv_contents	varchar2(300),	
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
/*
notice	��������							
�÷���	������Ÿ��	����Ÿ��	��Ÿ����	�������̺�	�����÷�	����		
nt_code	varchar2(20)	pk				�������� �ڵ�		
nt_title	varchar2(50)	nn				����		
nt_contents	varchar2(300)					����		
nt_file	varchar2(100)					÷������		
nt_sfile	varchar2(100)					÷������ ���� �����		
nt_date	date	nn				�ۼ�����		
nt_hits	number					��ȸ��		
*/
create table notice(
nt_code	varchar2(20)	primary key,		
nt_title	varchar2(50)	not null,				
nt_contents	varchar2(300),					
nt_file	varchar2(100),				
nt_sfile	varchar2(100),						
nt_date	date	not null,					
nt_hits	number	
);

create sequence sequ_notice
  start with 1
  increment by 1;
  
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