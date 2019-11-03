package com.madang.vo;

public class ConcertVO {
	
	String concert_code,c_title, c_sdate,c_edate, c_stime, c_place, c_rating, c_genre, c_host, c_poster, c_sposter, c_info_poster, c_info_sposter,c_status, c_contact, sday, eday;
	int c_time, c_price;
	
	
	
	public int getSday() {
		
		return Integer.parseInt(sday);
	}
	public void setSday(String sday) {
		this.sday = sday;
	}
	public int getEday() {
		
		return Integer.parseInt(eday);
	}
	public void setEday(String eday) {
		this.eday = eday;
	}
	
	
	public String getC_contact() {
		return c_contact;
	}
	public void setC_contact(String c_contact) {
		this.c_contact = c_contact;
	}
	public String getConcert_code() {
		return concert_code;
	}
	public void setConcert_code(String concert_code) {
		this.concert_code = concert_code;
	}
	public String getC_title() {
		return c_title;
	}
	public void setC_title(String c_title) {
		this.c_title = c_title;
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
	public String getC_stime() {
		return c_stime;
	}
	public void setC_stime(String c_stime) {
		this.c_stime = c_stime;
	}
	public String getC_place() {
		return c_place;
	}
	public void setC_place(String c_place) {
		this.c_place = c_place;
	}
	public String getC_rating() {
		return c_rating;
	}
	public void setC_rating(String c_rating) {
		this.c_rating = c_rating;
	}
	public String getC_genre() {
		return c_genre;
	}
	public void setC_genre(String c_genre) {
		this.c_genre = c_genre;
	}
	public String getC_host() {
		return c_host;
	}
	public void setC_host(String c_host) {
		this.c_host = c_host;
	}
	public String getC_poster() {
		return c_poster;
	}
	public void setC_poster(String c_poster) {
		this.c_poster = c_poster;
	}
	public String getC_sposter() {
		return c_sposter;
	}
	public void setC_sposter(String c_sposter) {
		this.c_sposter = c_sposter;
	}
	public String getC_info_poster() {
		return c_info_poster;
	}
	public void setC_info_poster(String c_info_poster) {
		this.c_info_poster = c_info_poster;
	}
	public String getC_info_sposter() {
		return c_info_sposter;
	}
	public void setC_info_sposter(String c_info_sposter) {
		this.c_info_sposter = c_info_sposter;
	}
	public String getC_status() {
		return c_status;
	}
	public void setC_status(String c_status) {
		this.c_status = c_status;
	}
	public int getC_time() {
		return c_time;
	}
	public void setC_time(int c_time) {
		this.c_time = c_time;
	}
	public int getC_price() {
		return c_price;
	}
	public void setC_price(int c_price) {
		this.c_price = c_price;
	}
	
	
	
	
}
