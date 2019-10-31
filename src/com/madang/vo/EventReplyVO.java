package com.madang.vo;

public class EventReplyVO {	
	//field
	String ev_rp_code, ev_rp_content, ev_code, id, ev_rp_date;
	//setter, getter
	public String getEv_rp_code() {
		return ev_rp_code;
	}

	public void setEv_rp_code(String ev_rp_code) {
		this.ev_rp_code = ev_rp_code;
	}

	public String getEv_rp_content() {
		return ev_rp_content;
	}

	public void setEv_rp_content(String ev_rp_content) {
		this.ev_rp_content = ev_rp_content;
	}

	public String getEv_code() {
		return ev_code;
	}

	public void setEv_code(String ev_code) {
		this.ev_code = ev_code;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getEv_rp_date() {
		return ev_rp_date;
	}

	public void setEv_rp_date(String ev_rp_date) {
		this.ev_rp_date = ev_rp_date;
	}

	
}
/**
EV_RP_CODE    NOT NULL VARCHAR2(20)   
EV_RP_CONTENT NOT NULL NVARCHAR2(200) 
EV_CODE       FK       VARCHAR2(20)   
ID            FK       VARCHAR2(20)   
EV_RP_DATE    NOT NULL DATE    
 */