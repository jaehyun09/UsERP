package com.project.UsERP.vo;

import java.util.Date;

// 상품
public class ProductVO {
	
	private int pro_code;			// 상품코드
	private String pro_name;		// 상품명
	private int pro_price;			// 단가
	private int pro_state;			// 상태
	private Date pro_reg_date;		// 상품등록일
	
	public int getPro_code() {
		return pro_code;
	}
	public void setPro_code(int pro_code) {
		this.pro_code = pro_code;
	}
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public int getPro_price() {
		return pro_price;
	}
	public void setPro__price(int pro__price) {
		this.pro_price = pro__price;
	}
	public int getPro_state() {
		return pro_state;
	}
	public void setPro_state(int pro_state) {
		this.pro_state = pro_state;
	}
	public Date getPro_reg_date() {
		return pro_reg_date;
	}
	public void setPro_reg_date(Date pro_reg_date) {
		this.pro_reg_date = pro_reg_date;
	}
	
	
	
}
