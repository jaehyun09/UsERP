package com.project.UsERP.vo;

import java.util.Date;

public class ProductVO {
	
	private int pro_code;					// 상품코드
	private String pro_name;				// 상품명
	private int pro_purchase_unit_price;	// 구매단가
	private int pro_sale_unit_price;		// 판매단가
	private int pro_use_state;				// 사용상태
	private Date pro_reg_date;				// 상품등록일
	
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

	public int getPro_purchase_unit_price() {
		return pro_purchase_unit_price;
	}

	public void setPro_purchase_unit_price(int pro_purchase_unit_price) {
		this.pro_purchase_unit_price = pro_purchase_unit_price;
	}

	public int getPro_sale_unit_price() {
		return pro_sale_unit_price;
	}

	public void setPro_sale_unit_price(int pro_sale_unit_price) {
		this.pro_sale_unit_price = pro_sale_unit_price;
	}

	public int getPro_use_state() {
		return pro_use_state;
	}

	public void setPro_use_state(int pro_use_state) {
		this.pro_use_state = pro_use_state;
	}

	public Date getPro_reg_date() {
		return pro_reg_date;
	}

	public void setPro_reg_date(Date pro_reg_date) {
		this.pro_reg_date = pro_reg_date;
	}
	
}
