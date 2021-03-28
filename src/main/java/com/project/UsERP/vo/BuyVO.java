package com.project.UsERP.vo;

import oracle.sql.DATE;

public class BuyVO {
	
	private int buy_code;			// 구매코드
	private DATE buy_reg_date;		// 등록일
	private DATE buy_update_date;	// 최근수정일
	private int buy_count;			// 구매수량
	private int buy_state;			// 구매상태
	private int comp_code;			// 거래처코드
	private int emp_code;			// 사원번호
	private int pro_code;			// 상품코드
	CompanyVO company;
	EmployeeVO employee;
	ProductVO product;
	
	public int getBuy_code() {
		return buy_code;
	}
	
	public void setBuy_code(int buy_code) {
		this.buy_code = buy_code;
	}

	public DATE getBuy_reg_date() {
		return buy_reg_date;
	}

	public void setBuy_reg_date(DATE buy_reg_date) {
		this.buy_reg_date = buy_reg_date;
	}

	public DATE getBuy_update_date() {
		return buy_update_date;
	}

	public void setBuy_update_date(DATE buy_update_date) {
		this.buy_update_date = buy_update_date;
	}

	public int getBuy_count() {
		return buy_count;
	}

	public void setBuy_count(int buy_count) {
		this.buy_count = buy_count;
	}

	public int getBuy_state() {
		return buy_state;
	}

	public void setBuy_state(int buy_state) {
		this.buy_state = buy_state;
	}

	public int getComp_code() {
		return comp_code;
	}

	public void setComp_code(int comp_code) {
		this.comp_code = comp_code;
	}

	public int getEmp_code() {
		return emp_code;
	}

	public void setEmp_code(int emp_code) {
		this.emp_code = emp_code;
	}

	public int getPro_code() {
		return pro_code;
	}

	public void setPro_code(int pro_code) {
		this.pro_code = pro_code;
	}

	public CompanyVO getCompany() {
		return company;
	}

	public void setCompany(CompanyVO company) {
		this.company = company;
	}

	public EmployeeVO getEmployee() {
		return employee;
	}

	public void setEmployee(EmployeeVO employee) {
		this.employee = employee;
	}

	public ProductVO getProduct() {
		return product;
	}

	public void setProduct(ProductVO product) {
		this.product = product;
	}
	
}
