package com.project.UsERP.vo;

import java.util.Date;

// 급여전표
public class SalaryStatementVO {
	
	private int ss_code;		// 급여전표번호
	private int ss_total_sal;	// 총 급여
	private Date ss_reg_date;	// 발행일
	private Date ss_sal_date;	// 지급일
	private int ss_state;		// 상태
	private int sal_code;		// 급여코드
	private String emp_code;	// 사원번호
	private int dep_code;		// 부서코드
	SalaryVO salary;			
	EmployeeVO employee;
	DepartmentVO department;
	BankVO bank;
	AccountVO account;
	
	public int getSs_code() {
		return ss_code;
	}
	public void setSs_code(int ss_code) {
		this.ss_code = ss_code;
	}
	public int getSs_total_sal() {
		return ss_total_sal;
	}
	public void setSs_total_sal(int ss_total_sal) {
		this.ss_total_sal = ss_total_sal;
	}
	public Date getSs_reg_date() {
		return ss_reg_date;
	}
	public void setSs_reg_date(Date ss_reg_date) {
		this.ss_reg_date = ss_reg_date;
	}
	public Date getSs_sal_date() {
		return ss_sal_date;
	}
	public void setSs_sal_date(Date ss_sal_date) {
		this.ss_sal_date = ss_sal_date;
	}
	public int getSs_state() {
		return ss_state;
	}
	public void setSs_state(int ss_state) {
		this.ss_state = ss_state;
	}
	public int getSal_code() {
		return sal_code;
	}
	public void setSal_code(int sal_code) {
		this.sal_code = sal_code;
	}
	public String getEmp_code() {
		return emp_code;
	}
	public void setEmp_code(String emp_code) {
		this.emp_code = emp_code;
	}
	public int getDep_code() {
		return dep_code;
	}
	public void setDep_code(int dep_code) {
		this.dep_code = dep_code;
	}
	public SalaryVO getSalary() {
		return salary;
	}
	public void setSalary(SalaryVO salary) {
		this.salary = salary;
	}
	public EmployeeVO getEmployee() {
		return employee;
	}
	public void setEmployee(EmployeeVO employee) {
		this.employee = employee;
	}
	public DepartmentVO getDepartment() {
		return department;
	}
	public void setDepartment(DepartmentVO department) {
		this.department = department;
	}
	public BankVO getBank() {
		return bank;
	}
	public void setBank(BankVO bank) {
		this.bank = bank;
	}
	public AccountVO getAccount() {
		return account;
	}
	public void setAccount(AccountVO account) {
		this.account = account;
	}
	
}
