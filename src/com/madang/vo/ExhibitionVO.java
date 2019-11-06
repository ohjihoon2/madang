package com.madang.vo;

public class ExhibitionVO {

	String exhibition_code, e_title, e_sdate,   e_edate, e_etime, e_place, e_rating, e_genre, e_host, e_poster, e_sposter, e_info_poster, e_info_sposter, e_contact, sday,eday;          
	int e_price;
	
	
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
	public String getE_contact() {
		return e_contact;
	}
	public void setE_contact(String e_contact) {
		this.e_contact = e_contact;
	}
	public String getExhibition_code() {
		return exhibition_code;
	}
	public void setExhibition_code(String exhibition_code) {
		this.exhibition_code = exhibition_code;
	}
	public String getE_title() {
		return e_title;
	}
	public void setE_title(String e_title) {
		this.e_title = e_title;
	}
	public String getE_sdate() {
		return e_sdate;
	}
	public void setE_sdate(String e_sdate) {
		this.e_sdate = e_sdate;
	}
	public String getE_edate() {
		return e_edate;
	}
	public void setE_edate(String e_edate) {
		this.e_edate = e_edate;
	}
	public String getE_etime() {
		return e_etime;
	}
	public void setE_etime(String e_etime) {
		this.e_etime = e_etime;
	}
	public String getE_place() {
		return e_place;
	}
	public void setE_place(String e_place) {
		this.e_place = e_place;
	}
	
	public String getE_rating() {
		return e_rating;
	}
	public void setE_rating(String e_rating) {
		this.e_rating = e_rating;
	}
	public String getE_genre() {
		return e_genre;
	}
	public void setE_genre(String e_genre) {
		this.e_genre = e_genre;
	}
	public String getE_host() {
		return e_host;
	}
	public void setE_host(String e_host) {
		this.e_host = e_host;
	}
	public String getE_poster() {
		return e_poster;
	}
	public void setE_poster(String e_poster) {
		this.e_poster = e_poster;
	}
	public String getE_sposter() {
		return e_sposter;
	}
	public void setE_sposter(String e_sposter) {
		this.e_sposter = e_sposter;
	}
	public String getE_info_poster() {
		return e_info_poster;
	}
	public void setE_info_poster(String e_info_poster) {
		this.e_info_poster = e_info_poster;
	}
	public String getE_info_sposter() {
		return e_info_sposter;
	}
	public void setE_info_sposter(String e_info_sposter) {
		this.e_info_sposter = e_info_sposter;
	}
	public int getE_price() {
		return e_price;
	}
	public void setE_price(int e_price) {
		this.e_price = e_price;
	}
	
	
	
}
