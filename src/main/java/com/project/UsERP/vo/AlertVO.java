package com.project.UsERP.vo;

public class AlertVO {
	private int alert_code;		// 계정번호
	private int alert_state;	// 계정명
	private String alert_content;	// 계정금액
	private int logs_code;	// 계정금액
	private int accs_code;	// 계정금액
	private int ss_code;	// 계정금액
	private int dep_code;	// 계정금액
	AccountStatementVO accountstatement;
	DepartmentVO department;
	LogisticsStatementVO logsisticsstatement;
	SalaryStatementVO salarystatement;
	
	public int getAlert_code() {
		return alert_code;
	}
	public void setAlert_code(int alert_code) {
		this.alert_code = alert_code;
	}
	public int getAlert_state() {
		return alert_state;
	}
	public void setAlert_state(int alert_state) {
		this.alert_state = alert_state;
	}
	public String getAlert_content() {
		return alert_content;
	}
	public void setAlert_content(String alert_content) {
		this.alert_content = alert_content;
	}
	public int getLogs_code() {
		return logs_code;
	}
	public void setLogs_code(int logs_code) {
		this.logs_code = logs_code;
	}
	public int getAccs_code() {
		return accs_code;
	}
	public void setAccs_code(int accs_code) {
		this.accs_code = accs_code;
	}
	public int getSs_code() {
		return ss_code;
	}
	public void setSs_code(int ss_code) {
		this.ss_code = ss_code;
	}
	public int getDep_code() {
		return dep_code;
	}
	public void setDep_code(int dep_code) {
		this.dep_code = dep_code;
	}
	public AccountStatementVO getAccountstatement() {
		return accountstatement;
	}
	public void setAccountstatement(AccountStatementVO accountstatement) {
		this.accountstatement = accountstatement;
	}
	public DepartmentVO getDepartment() {
		return department;
	}
	public void setDepartment(DepartmentVO department) {
		this.department = department;
	}
	public LogisticsStatementVO getLogsisticsstatement() {
		return logsisticsstatement;
	}
	public void setLogsisticsstatement(LogisticsStatementVO logsisticsstatement) {
		this.logsisticsstatement = logsisticsstatement;
	}
	public SalaryStatementVO getSalarystatement() {
		return salarystatement;
	}
	public void setSalarystatement(SalaryStatementVO salarystatement) {
		this.salarystatement = salarystatement;
	}
	
	
	
	
	
	
	
}
