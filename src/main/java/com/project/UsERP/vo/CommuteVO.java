package com.project.UsERP.vo;

import oracle.sql.DATE;

public class CommuteVO {
	
	private int cm_code;			// 출퇴근코드
	private DATE cm_date;			// 일자
	private DATE cm_start;			// 출근시간
	private DATE cm_end;			// 퇴근시간
	private DATE cm_night_time;		// 야근시간
	private DATE cm_over_time;		// 특근시간
	private String cm_address;		// MAC주소
	private int emp_code;			// 사원번호
	EmployeeVO employee;
	
	public int getCm_code() {
		return cm_code;
	}
	
	public void setCm_code(int cm_code) {
		this.cm_code = cm_code;
	}
	
	public DATE getCm_date() {
		return cm_date;
	}
	
	public void setCm_date(DATE cm_date) {
		this.cm_date = cm_date;
	}
	
	public DATE getCm_start() {
		return cm_start;
	}
	
	public void setCm_start(DATE cm_start) {
		this.cm_start = cm_start;
	}
	
	public DATE getCm_end() {
		return cm_end;
	}
	
	public void setCm_end(DATE cm_end) {
		this.cm_end = cm_end;
	}
	
	public DATE getCm_night_time() {
		return cm_night_time;
	}
	
	public void setCm_night_time(DATE cm_night_time) {
		this.cm_night_time = cm_night_time;
	}
	
	public DATE getCm_over_time() {
		return cm_over_time;
	}
	
	public void setCm_over_time(DATE cm_over_time) {
		this.cm_over_time = cm_over_time;
	}
	
	public String getCm_address() {
		return cm_address;
	}
	
	public void setCm_address(String cm_address) {
		this.cm_address = cm_address;
	}
	
	public int getEmp_code() {
		return emp_code;
	}
	
	public void setEmp_code(int emp_code) {
		this.emp_code = emp_code;
	}
	
	public EmployeeVO getEmployee() {
		return employee;
	}
	
	public void setEmployee(EmployeeVO employee) {
		this.employee = employee;
	}
	
}
