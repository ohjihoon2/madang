package com.madang.vo;

public class ReviewVO {
	//field
	String rv_code, rv_title, rv_content, concert_code, rv_date, id, c_poster, c_title;
	int rv_hits, rv_staravg;
	//method
	
	public String getRv_code() {
		return rv_code;
	}
	public String getC_poster() {
		return c_poster;
	}
	public void setC_poster(String c_poster) {
		this.c_poster = c_poster;
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
	public String getConcert_code() {
		return concert_code;
	}
	public void setConcert_code(String concert_code) {
		this.concert_code = concert_code;
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
	public String getC_title() {
		return c_title;
	}
	public void setC_title(String c_title) {
		this.c_title = c_title;
	}
	
	
}
/*review	¸®ºä °Ô½Ã±Û							
rv_code	varchar2(20)	primary key,	
rv_title	varchar2(50)	not null,	
rv_content	nvarchar2(300) not null,	
concert_code	varchar2(100),
rv_date	date	not null,					
rv_hits	number not null,	
id	varchar2(20),			
rv_staravg	number			
*/