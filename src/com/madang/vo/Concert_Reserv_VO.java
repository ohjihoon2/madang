package com.madang.vo;

public class Concert_Reserv_VO {
	//결제 정보
	String p_code, mem_id, tce_code, p_status, tc_paym, tc_payw, tc_pays, p_date;
	//공연 예매정보
	String tc_code, concert_code, tc_cdate, Tc_cseat, tc_cancelc, tc_canceld,
		tc_recive, tc_name, tc_birth, tc_phone, tc_email, tc_time;
	int tc_price2;
	//공연정보 reference
	String c_title, c_place, c_sdate, c_edate, c_rating, c_time, c_stime, c_sposter;
	//예매완료 가공
	int status;
	
	
	public int getTc_price2() {
		return tc_price2;
	}
	public void setTc_price2(int tc_price2) {
		this.tc_price2 = tc_price2;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getC_sposter() {
		return c_sposter;
	}
	public void setC_sposter(String c_sposter) {
		this.c_sposter = c_sposter;
	}
	public String getP_code() {
		return p_code;
	}
	public void setP_code(String p_code) {
		this.p_code = p_code;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getTce_code() {
		return tce_code;
	}
	public void setTce_code(String tce_code) {
		this.tce_code = tce_code;
	}
	public String getP_status() {
		return p_status;
	}
	public void setP_status(String p_status) {
		this.p_status = p_status;
	}
	public String getTc_paym() {
		return tc_paym;
	}
	public void setTc_paym(String tc_paym) {
		this.tc_paym = tc_paym;
	}
	public String getTc_payw() {
		return tc_payw;
	}
	public void setTc_payw(String tc_payw) {
		this.tc_payw = tc_payw;
	}
	public String getTc_pays() {
		return tc_pays;
	}
	public void setTc_pays(String tc_pays) {
		this.tc_pays = tc_pays;
	}
	public String getP_date() {
		return p_date;
	}
	public void setP_date(String p_date) {
		this.p_date = p_date;
	}
	public String getTc_code() {
		return tc_code;
	}
	public void setTc_code(String tc_code) {
		this.tc_code = tc_code;
	}
	public String getConcert_code() {
		return concert_code;
	}
	public void setConcert_code(String concert_code) {
		this.concert_code = concert_code;
	}
	public String getTc_cdate() {
		return tc_cdate;
	}
	public void setTc_cdate(String tc_cdate) {
		this.tc_cdate = tc_cdate;
	}
	public String getTc_cseat() {
		return Tc_cseat;
	}
	public void setTc_cseat(String Tc_cseat) {
		this.Tc_cseat = Tc_cseat;
	}
	public String getTc_cancelc() {
		return tc_cancelc;
	}
	public void setTc_cancelc(String tc_cancelc) {
		this.tc_cancelc = tc_cancelc;
	}
	public String getTc_canceld() {
		return tc_canceld;
	}
	public void setTc_canceld(String tc_canceld) {
		this.tc_canceld = tc_canceld;
	}
	/*public String getTc_price() {
		return tc_price;
	}
	public void setTc_price(String tc_price) {
		this.tc_price = tc_price;
	}*/
	public String getTc_recive() {
		return tc_recive;
	}
	public void setTc_recive(String tc_recive) {
		this.tc_recive = tc_recive;
	}
	public String getTc_name() {
		return tc_name;
	}
	public void setTc_name(String tc_name) {
		this.tc_name = tc_name;
	}
	public String getTc_birth() {
		return tc_birth;
	}
	public void setTc_birth(String tc_birth) {
		this.tc_birth = tc_birth;
	}
	public String getTc_phone() {
		return tc_phone;
	}
	public void setTc_phone(String tc_phone) {
		this.tc_phone = tc_phone;
	}
	public String getTc_email() {
		return tc_email;
	}
	public void setTc_email(String tc_email) {
		this.tc_email = tc_email;
	}
	public String getTc_time() {
		return tc_time;
	}
	public void setTc_time(String tc_time) {
		this.tc_time = tc_time;
	}
	public String getC_title() {
		return c_title;
	}
	public void setC_title(String c_title) {
		this.c_title = c_title;
	}
	public String getC_place() {
		return c_place;
	}
	public void setC_place(String c_place) {
		this.c_place = c_place;
	}
	public String getC_sdate() {
		return c_sdate;
	}
	public void setC_sdate(String c_sdate) {
		this.c_sdate = c_sdate;
	}
	public String getC_edate() {
		return c_edate;
	}
	public void setC_edate(String c_edate) {
		this.c_edate = c_edate;
	}
	public String getC_rating() {
		return c_rating;
	}
	public void setC_rating(String c_rating) {
		this.c_rating = c_rating;
	}
	public String getC_time() {
		return c_time;
	}
	public void setC_time(String c_time) {
		this.c_time = c_time;
	}
	public String getC_stime() {
		return c_stime;
	}
	public void setC_stime(String c_stime) {
		this.c_stime = c_stime;
	}
	
	
}
