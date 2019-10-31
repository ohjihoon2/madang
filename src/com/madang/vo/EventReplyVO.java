package com.madang.vo;

public class EventReplyVO {
	
	//field
	String EV_RP_CODE, EV_RP_CONTENT, ID, EV_RP_DATE;
	
	//setter, getter
	public String getEV_RP_CODE() {
		return EV_RP_CODE;
	}

	public void setEV_RP_CODE(String eV_RP_CODE) {
		EV_RP_CODE = eV_RP_CODE;
	}

	public String getEV_RP_CONTENT() {
		return EV_RP_CONTENT;
	}

	public void setEV_RP_CONTENT(String eV_RP_CONTENT) {
		EV_RP_CONTENT = eV_RP_CONTENT;
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getEV_RP_DATE() {
		return EV_RP_DATE;
	}

	public void setEV_RP_DATE(String eV_RP_DATE) {
		EV_RP_DATE = eV_RP_DATE;
	}
	
	
}
/**
EV_RP_CODE    NOT NULL VARCHAR2(20)   
EV_RP_CONTENT NOT NULL NVARCHAR2(200) 
ID                     VARCHAR2(20)   
EV_RP_DATE    NOT NULL DATE 
 */