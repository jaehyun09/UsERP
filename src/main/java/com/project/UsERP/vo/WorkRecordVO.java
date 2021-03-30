package com.project.UsERP.vo;

import java.util.Date;

// 근태기록
public class WorkRecordVO {

	private int wr_code;			// 근태코드
	private int wr_type;			// 근태유형
	private Date wr_ap_date;		// 근태신청일
	private Date wr_va_start;		// 시작일
	private Date wr_va_end;			// 종료일
	private String wr_va_reason;	// 사유
	private int emp_code;			// 사원번호
	private int hr_code;			// 인사코드
	EmployeeVO employee;
	HrCodeVO hrCode;
	
	public int getWr_code() {
		return wr_code;
	}
	public void setWr_code(int wr_code) {
		this.wr_code = wr_code;
	}
	public int getWr_type() {
		return wr_type;
	}
	public void setWr_type(int wr_type) {
		this.wr_type = wr_type;
	}
	public Date getWr_ap_date() {
		return wr_ap_date;
	}
	public void setWr_ap_date(Date wr_ap_date) {
		this.wr_ap_date = wr_ap_date;
	}
	public Date getWr_va_start() {
		return wr_va_start;
	}
	public void setWr_va_start(Date wr_va_start) {
		this.wr_va_start = wr_va_start;
	}
	public Date getWr_va_end() {
		return wr_va_end;
	}
	public void setWr_va_end(Date wr_va_end) {
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
	public int getHr_code() {
		return hr_code;
	}
	public void setHr_code(int hr_code) {
		this.hr_code = hr_code;
	}
	public EmployeeVO getEmployee() {
		return employee;
	}
	public void setEmployee(EmployeeVO employee) {
		this.employee = employee;
	}
	public HrCodeVO getHrCode() {
		return hrCode;
	}
	public void setHrCode(HrCodeVO hrCode) {
		this.hrCode = hrCode;
	}
	
}
