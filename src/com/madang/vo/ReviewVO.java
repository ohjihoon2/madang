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
/*review	리뷰 게시글							
컬럼명	데이터타입	제약타입	기타제약	참조테이블	참조컬럼	설명		
rv_code	varchar2(20)	pk				리뷰 게시글 코드		
rv_title	varchar2(50)	nn				제목		
rv_contents	nvarchar2(300)					내용		
rv_file	varchar2(100)					첨부파일		
rv_sfile	varchar2(100)					첨부파일 서버 저장용		
rv_date	date	nn				작성일자		
rv_hits	number	nn				조회수		
id	varchar2(20)					작성자		
rv_cost	number					평점		
*/