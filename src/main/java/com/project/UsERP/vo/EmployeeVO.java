package com.project.UsERP.vo;

import oracle.sql.DATE;

public class EmployeeVO {
	
	private String emp_code;		// 사원번호
	private String emp_pwd;			// 비밀번호
	private String emp_authority;	// 권한
	private String emp_enabled;		// 등급
	private String emp_position;	// 직급
	private String emp_name;		// 사원명 
	private DATE emp_hire_date;		// 입사일
	private int emp_cos;			// 근속년수
	private String emp_photo;		// 사진
	private String emp_jumin;		// 주민등록번호
	private String emp_address;		// 주소
	private String emp_tel;			// 핸드폰 
	private String emp_phone;		// 핸드폰 
	private String emp_email;		// 이메일 
	private int emp_port_num;		// 여권번호
	private String emp_bank;		// 급여은행
	private String emp_account;		// 급여계좌
	
	public String getEmp_code() {
		return emp_code;
	}
	
	public void setEmp_code(String emp_code) {
		this.emp_code = emp_code;
	}
	
	public String getEmp_pwd() {
		return emp_pwd;
	}
	
	public void setEmp_pwd(String emp_pwd) {
		this.emp_pwd = emp_pwd;
	}
	
	public String getEmp_authority() {
		return emp_authority;
	}
	
	public void setEmp_authority(String emp_authority) {
		this.emp_authority = emp_authority;
	}
	
	public String getEmp_enabled() {
		return emp_enabled;
	}
	
	public void setEmp_enabled(String emp_enabled) {
		this.emp_enabled = emp_enabled;
	}
	
	public String getEmp_position() {
		return emp_position;
	}
	
	public void setEmp_position(String emp_position) {
		this.emp_position = emp_position;
	}
	
	public String getEmp_name() {
		return emp_name;
	}
	
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	
	public DATE getEmp_hire_date() {
		return emp_hire_date;
	}
	
	public void setEmp_hire_date(DATE emp_hire_date) {
		this.emp_hire_date = emp_hire_date;
	}
	
	public int getEmp_cos() {
		return emp_cos;
	}
	
	public void setEmp_cos(int emp_cos) {
		this.emp_cos = emp_cos;
	}
	
	public String getEmp_photo() {
		return emp_photo;
	}
	
	public void setEmp_photo(String emp_photo) {
		this.emp_photo = emp_photo;
	}
	
	public String getEmp_jumin() {
		return emp_jumin;
	}
	
	public void setEmp_jumin(String emp_jumin) {
		this.emp_jumin = emp_jumin;
	}
	
	public String getEmp_address() {
		return emp_address;
	}
	
	public void setEmp_address(String emp_address) {
		this.emp_address = emp_address;
	}
	
	public String getEmp_tel() {
		return emp_tel;
	}
	
	public void setEmp_tel(String emp_tel) {
		this.emp_tel = emp_tel;
	}
	
	public String getEmp_phone() {
		return emp_phone;
	}
	
	public void setEmp_phone(String emp_phone) {
		this.emp_phone = emp_phone;
	}
	
	public String getEmp_email() {
		return emp_email;
	}
	
	public void setEmp_email(String emp_email) {
		this.emp_email = emp_email;
	}
	
	public int getEmp_port_num() {
		return emp_port_num;
	}
	
	public void setEmp_port_num(int emp_port_num) {
		this.emp_port_num = emp_port_num;
	}
	
	public String getEmp_bank() {
		return emp_bank;
	}
	
	public void setEmp_bank(String emp_bank) {
		this.emp_bank = emp_bank;
	}
	
	public String getEmp_account() {
		return emp_account;
	}
	
	public void setEmp_account(String emp_account) {
		this.emp_account = emp_account;
	}
	
}
