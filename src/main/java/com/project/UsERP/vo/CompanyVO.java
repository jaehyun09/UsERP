package com.project.UsERP.vo;

import java.util.Date;

public class CompanyVO {
	
	private int comp_code;				// 거래처코드
	private String comp_name;			// 거래처명
    private int comp_biz_reg_no;		// 업종코드
    private String comp_ceo_name;		// 대표자명
    private int comp_reg_no;			// 사업자번호
    private String comp_address;		// 주소
    private int comp_use_state;			// 구분 
    private Date comp_write_reg_date;	// 거래처등록일
	
    public String getComp_address() {
		return comp_address;
	}
	
	public void setComp_address(String comp_address) {
		this.comp_address = comp_address;
	}

	public int getComp_code() {
		return comp_code;
	}

	public void setComp_code(int comp_code) {
		this.comp_code = comp_code;
	}

	public String getComp_name() {
		return comp_name;
	}

	public void setComp_name(String comp_name) {
		this.comp_name = comp_name;
	}

	public int getComp_biz_reg_no() {
		return comp_biz_reg_no;
	}

	public void setComp_biz_reg_no(int comp_biz_reg_no) {
		this.comp_biz_reg_no = comp_biz_reg_no;
	}

	public String getComp_ceo_name() {
		return comp_ceo_name;
	}

	public void setComp_ceo_name(String comp_ceo_name) {
		this.comp_ceo_name = comp_ceo_name;
	}

	public int getComp_reg_no() {
		return comp_reg_no;
	}

	public void setComp_reg_no(int comp_reg_no) {
		this.comp_reg_no = comp_reg_no;
	}

	public int getComp_use_state() {
		return comp_use_state;
	}

	public void setComp_use_state(int comp_use_state) {
		this.comp_use_state = comp_use_state;
	}

	public Date getComp_write_reg_date() {
		return comp_write_reg_date;
	}

	public void setComp_write_reg_date(Date comp_write_reg_date) {
		this.comp_write_reg_date = comp_write_reg_date;
	}
    
}
