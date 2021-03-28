package com.project.UsERP.vo;

import oracle.sql.DATE;

public class SalesVO {
	
	private int sales_code;				// 판매코드
	private DATE sales_reg_date;		// 등록일
	private DATE sales_update_date;		// 최근수정일
	private int sales_count;			// 판매수량
	private int sales_state;			// 판매상태
	private int comp_code;				// 거래처코드
	private int emp_code;				// 사원번호
	private int pro_code;				// 상품코드
	CompanyVO company;
	EmployeeVO employee;
	ProductVO product;
	
	public int getComp_code() {
		return comp_code;
	}
	
	public void setComp_code(int comp_code) {
		this.comp_code = comp_code;
	}

	public int getSales_code() {
		return sales_code;
	}

	public void setSales_code(int sales_code) {
		this.sales_code = sales_code;
	}

	public DATE getSales_reg_date() {
		return sales_reg_date;
	}

	public void setSales_reg_date(DATE sales_reg_date) {
		this.sales_reg_date = sales_reg_date;
	}

	public DATE getSales_update_date() {
		return sales_update_date;
	}

	public void setSales_update_date(DATE sales_update_date) {
		this.sales_update_date = sales_update_date;
	}

	public int getSales_count() {
		return sales_count;
	}

	public void setSales_count(int sales_count) {
		this.sales_count = sales_count;
	}

	public int getSales_state() {
		return sales_state;
	}

	public void setSales_state(int sales_state) {
		this.sales_state = sales_state;
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
