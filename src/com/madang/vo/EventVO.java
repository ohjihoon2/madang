package com.madang.vo;

public class EventVO {
	//field
	String ev_code,ev_title,ev_thumbnail,ev_sthumbnail,ev_detail,ev_sdetail,ev_date,ev_sdate,ev_edate,ev_status;
	int ev_hits;
	//method
	public String getEv_code() {
		return ev_code;
	}
	public void setEv_code(String ev_code) {
		this.ev_code = ev_code;
	}
	public String getEv_title() {
		return ev_title;
	}
	public void setEv_title(String ev_title) {
		this.ev_title = ev_title;
	}
	public String getEv_thumbnail() {
		return ev_thumbnail;
	}
	public void setEv_thumbnail(String ev_thumbnail) {
		this.ev_thumbnail = ev_thumbnail;
	}
	public String getEv_sthumbnail() {
		return ev_sthumbnail;
	}
	public void setEv_sthumbnail(String ev_sthumbnail) {
		this.ev_sthumbnail = ev_sthumbnail;
	}
	public String getEv_detail() {
		return ev_detail;
	}
	public void setEv_detail(String ev_detail) {
		this.ev_detail = ev_detail;
	}
	public String getEv_sdetail() {
		return ev_sdetail;
	}
	public void setEv_sdetail(String ev_sdetail) {
		this.ev_sdetail = ev_sdetail;
	}
	public String getEv_date() {
		return ev_date;
	}
	public void setEv_date(String ev_date) {
		this.ev_date = ev_date;
	}
	
	public String getEv_sdate() {
		return ev_sdate;
	}
	public void setEv_sdate(String ev_sdate) {
		this.ev_sdate = ev_sdate;
	}
	public String getEv_edate() {
		return ev_edate;
	}
	public void setEv_edate(String ev_edate) {
		this.ev_edate = ev_edate;
	}
	public String getEv_status() {
		return ev_status;
	}
	public void setEv_status(String ev_status) {
		this.ev_status = ev_status;
	}
	public int getEv_hits() {
		return ev_hits;
	}
	public void setEv_hits(int ev_hits) {
		this.ev_hits = ev_hits;
	}
	
}
/**
ev_code	varchar2(20)	primary key,						
ev_title	varchar2(50)	not null,
ev_thumbnail	varchar2(300),
ev_sthumbnail	varchar2(300),
ev_detail	varchar2(300),							
ev_sdetail	varchar2(300),					
ev_date	date not null,	
ev_status varchar2(10),
ev_hits	number
 */