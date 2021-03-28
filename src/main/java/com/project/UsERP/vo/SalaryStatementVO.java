package com.project.UsERP.vo;

import java.util.Date;

public class SalaryStatementVO {
	
	private int ss_total_sal;	// 총 급여
	private Date ss_sal_date;	// 지급일
	private int sal_code;		// 급여코드
	private int stm_code;		// 전표번호
	SalaryVO salary;
	StatementVO statement;
	
	public int getSal_code() {
		return sal_code;
	}
	
	public void setSal_code(int sal_code) {
		this.sal_code = sal_code;
	}

	public int getSs_total_sal() {
		return ss_total_sal;
	}

	public void setSs_total_sal(int ss_total_sal) {
		this.ss_total_sal = ss_total_sal;
	}

	public Date getSs_sal_date() {
		return ss_sal_date;
	}

	public void setSs_sal_date(Date ss_sal_date) {
		this.ss_sal_date = ss_sal_date;
	}

	public int getStm_code() {
		return stm_code;
	}

	public void setStm_code(int stm_code) {
		this.stm_code = stm_code;
	}

	public SalaryVO getSalary() {
		return salary;
	}

	public void setSalary(SalaryVO salary) {
		this.salary = salary;
	}

	public StatementVO getStatement() {
		return statement;
	}

	public void setStatement(StatementVO statement) {
		this.statement = statement;
	}
	
}
