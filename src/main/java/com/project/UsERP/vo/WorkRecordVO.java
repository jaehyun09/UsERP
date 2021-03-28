package com.project.UsERP.vo;

import oracle.sql.DATE;

public class WorkRecordVO {

	private int wr_code;			// 근태코드
	private String wr_type;			// 근태유형
	private DATE wr_ap_date;		// 근태신청일
	private DATE wr_va_start;		// 시작일
	private DATE wr_va_end;			// 종료일
	private String wr_va_reason;	// 사유
	private int emp_code;			// 사원번호
	private int per_code;			// 인사코드
	EmployeeVO employee;
	PerCodeVO perCode;
	
	public int getWr_code() {
		return wr_code;
	}
	
	public void setWr_code(int wr_code) {
		this.wr_code = wr_code;
	}
	
	public String getWr_type() {
		return wr_type;
	
	}
	
	public void setWr_type(String wr_type) {
		this.wr_type = wr_type;
	}
	
	public DATE getWr_ap_date() {
		return wr_ap_date;
	}
	
	public void setWr_ap_date(DATE wr_ap_date) {
		this.wr_ap_date = wr_ap_date;
	}
	
	public DATE getWr_va_start() {
		return wr_va_start;
	}
	
	public void setWr_va_start(DATE wr_va_start) {
		this.wr_va_start = wr_va_start;
	}
	
	public DATE getWr_va_end() {
		return wr_va_end;
	}
	
	public void setWr_va_end(DATE wr_va_end) {
		this.wr_va_end = wr_va_end;
	}
	
	public String getWr_va_reason() {
		return wr_va_reason;
	}
	
	public void setWr_va_reason(String wr_va_reason) {
		this.wr_va_reason = wr_va_reason;
	}
	
	public int getEmp_code() {
		return emp_code;
	}
	
	public void setEmp_code(int emp_code) {
		this.emp_code = emp_code;
	}
	
	public int getPer_code() {
		return per_code;
	}
	
	public void setPer_code(int per_code) {
		this.per_code = per_code;
	}
	
	public EmployeeVO getEmployee() {
		return employee;
	}
	
	public void setEmployee(EmployeeVO employee) {
		this.employee = employee;
	}
	
	public PerCodeVO getPerCode() {
		return perCode;
	}
	
	public void setPerCode(PerCodeVO perCode) {
		this.perCode = perCode;
	}
	
}
