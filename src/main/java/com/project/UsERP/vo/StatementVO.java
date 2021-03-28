package com.project.UsERP.vo;


import java.util.Date;

public class StatementVO {
	
	private int stm_code;			// 전표번호
	private int stm_bill;			// 어음
	private Date stm_reg_date;		// 발행일
	private int stm_approve_state;	// 승인상태
	private int stm_type;			// 전표유형
	private String stm_content;		// 상세내용
	private int stm_price;			// 단가
	private int emp_code;			// 사원번호
	private int sales_code;			// 판매코드
	private int buy_code;			// 구매코드
	private int acco_code;			// 계정번호
	private int bank_code;			// 계좌코드
	EmployeeVO employee;
	SalesVO sales;
	BuyVO buy;
	AccountVO account;
	BankVO bank;
	
	public int getAcco_code() {
		return acco_code;
	}
	
	public void setAcco_code(int acco_code) {
		this.acco_code = acco_code;
	}

	public int getStm_code() {
		return stm_code;
	}

	public void setStm_code(int stm_code) {
		this.stm_code = stm_code;
	}

	public int getStm_bill() {
		return stm_bill;
	}

	public void setStm_bill(int stm_bill) {
		this.stm_bill = stm_bill;
	}

	public Date getStm_reg_date() {
		return stm_reg_date;
	}

	public void setStm_reg_date(Date stm_reg_date) {
		this.stm_reg_date = stm_reg_date;
	}

	public int getStm_approve_state() {
		return stm_approve_state;
	}

	public void setStm_approve_state(int stm_approve_state) {
		this.stm_approve_state = stm_approve_state;
	}

	public int getStm_type() {
		return stm_type;
	}

	public void setStm_type(int stm_type) {
		this.stm_type = stm_type;
	}

	public String getStm_content() {
		return stm_content;
	}

	public void setStm_content(String stm_content) {
		this.stm_content = stm_content;
	}

	public int getStm_price() {
		return stm_price;
	}

	public void setStm_price(int stm_price) {
		this.stm_price = stm_price;
	}

	public int getEmp_code() {
		return emp_code;
	}

	public void setEmp_code(int emp_code) {
		this.emp_code = emp_code;
	}

	public int getSales_code() {
		return sales_code;
	}

	public void setSales_code(int sales_code) {
		this.sales_code = sales_code;
	}

	public int getBuy_code() {
		return buy_code;
	}

	public void setBuy_code(int buy_code) {
		this.buy_code = buy_code;
	}

	public int getBank_code() {
		return bank_code;
	}

	public void setBank_code(int bank_code) {
		this.bank_code = bank_code;
	}

	public EmployeeVO getEmployee() {
		return employee;
	}

	public void setEmployee(EmployeeVO employee) {
		this.employee = employee;
	}

	public SalesVO getSales() {
		return sales;
	}

	public void setSales(SalesVO sales) {
		this.sales = sales;
	}

	public BuyVO getBuy() {
		return buy;
	}

	public void setBuy(BuyVO buy) {
		this.buy = buy;
	}

	public AccountVO getAccount() {
		return account;
	}

	public void setAccount(AccountVO account) {
		this.account = account;
	}

	public BankVO getBank() {
		return bank;
	}

	public void setBank(BankVO bank) {
		this.bank = bank;
	}
	
}
