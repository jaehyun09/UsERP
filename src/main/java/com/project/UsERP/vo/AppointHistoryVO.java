package com.project.UsERP.vo;

import oracle.sql.DATE;

public class AppointHistoryVO {
	
	private int ap_code;				// 이력코드
	private DATE ap_date;				// 발령일
	private String ap_cur_dep;			// 현재부서
	private String ap_cur_position;		// 현재직급
	private String ap_pre_dep;			// 이전부서
	private String ap_pre_position;		// 이전직급
	private int emp_code;				// 사원번호
	private int per_code;				// 인사코드
	private int dep_code;				// 부서코드
	EmployeeVO employee;
	PerCodeVO perCode;
	DepartmentVO department;
	
	public int getAp_code() {
		return ap_code;
	}
	
	public void setAp_code(int ap_code) {
		this.ap_code = ap_code;
	}
	
	public DATE getAp_date() {
		return ap_date;
	}
	
	public void setAp_date(DATE ap_date) {
		this.ap_date = ap_date;
	}
	
	public String getAp_cur_dep() {
		return ap_cur_dep;
	}
	
	public void setAp_cur_dep(String ap_cur_dep) {
		this.ap_cur_dep = ap_cur_dep;
	}
	
	public String getAp_cur_position() {
		return ap_cur_position;
	}
	
	public void setAp_cur_position(String ap_cur_position) {
		this.ap_cur_position = ap_cur_position;
	}
	
	public String getAp_pre_dep() {
		return ap_pre_dep;
	}
	
	public void setAp_pre_dep(String ap_pre_dep) {
		this.ap_pre_dep = ap_pre_dep;
	}
	
	public String getAp_pre_position() {
		return ap_pre_position;
	}
	
	public void setAp_pre_position(String ap_pre_position) {
		this.ap_pre_position = ap_pre_position;
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
	
	public int getDep_code() {
		return dep_code;
	}
	
	public void setDep_code(int dep_code) {
		this.dep_code = dep_code;
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
	
	public DepartmentVO getDepartment() {
		return department;
	}
	
	public void setDepartment(DepartmentVO department) {
		this.department = department;
	}
	
}
