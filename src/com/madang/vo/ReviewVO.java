package com.madang.vo;

public class ReviewVO {
	//field
	String rv_code, rv_title, rv_content, rv_file, rv_sfile, rv_date, id;
	int rv_hits, rv_staravg;
	//method
	public String getRv_code() {
		return rv_code;
	}
	public void setRv_code(String rv_code) {
		this.rv_code = rv_code;
	}
	public String getRv_title() {
		return rv_title;
	}
	public void setRv_title(String rv_title) {
		this.rv_title = rv_title;
	}
	public String getRv_content() {
		return rv_content;
	}
	public void setRv_content(String rv_content) {
		this.rv_content = rv_content;
	}
	public String getRv_file() {
		return rv_file;
	}
	public void setRv_file(String rv_file) {
		this.rv_file = rv_file;
	}
	public String getRv_sfile() {
		return rv_sfile;
	}
	public void setRv_sfile(String rv_sfile) {
		this.rv_sfile = rv_sfile;
	}
	public String getRv_date() {
		return rv_date;
	}
	public void setRv_date(String rv_date) {
		this.rv_date = rv_date;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getRv_hits() {
		return rv_hits;
	}
	public void setRv_hits(int rv_hits) {
		this.rv_hits = rv_hits;
	}
	public int getRv_staravg() {
		return rv_staravg;
	}
	public void setRv_staravg(int rv_staravg) {
		this.rv_staravg = rv_staravg;
	}
	
}
/*review	���� �Խñ�							
�÷���	������Ÿ��	����Ÿ��	��Ÿ����	�������̺�	�����÷�	����		
rv_code	varchar2(20)	pk				���� �Խñ� �ڵ�		
rv_title	varchar2(50)	nn				����		
rv_contents	nvarchar2(300)					����		
rv_file	varchar2(100)					÷������		
rv_sfile	varchar2(100)					÷������ ���� �����		
rv_date	date	nn				�ۼ�����		
rv_hits	number	nn				��ȸ��		
id	varchar2(20)					�ۼ���		
rv_cost	number					����		
*/