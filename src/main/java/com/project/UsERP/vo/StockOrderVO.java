package com.project.UsERP.vo;

import java.util.Date;

public class StockOrderVO {
	
	private int order_code;				// 재고전표번호
	private String order_type;			// 주문형태
	private Date order_reg_date;		// 등록일자
	private Date order_update_date;		// 수정일자
	private int order_state;			// 재고상태
	private int comp_code;				// 거래처코드
	private int ware_code;				// 창고번호
	private int pro_code;				// 상품코드
	private int emp_code;				// 사원번호
	private int stm_code;				// 전표번호
	CompanyVO company;
	WarehouseVO warehouse;
	ProductVO product;
	EmployeeVO employee;
	StockInOrderVO stockInOrder;
	StockOutOrderVO stockOutOrder;
	
	public int getComp_code() {
		return comp_code;
	}
	
	public void setComp_code(int comp_code) {
		this.comp_code = comp_code;
	}

	public int getOrder_code() {
		return order_code;
	}

	public void setOrder_code(int order_code) {
		this.order_code = order_code;
	}

	public String getOrder_type() {
		return order_type;
	}

	public void setOrder_type(String order_type) {
		this.order_type = order_type;
	}

	public Date getOrder_reg_date() {
		return order_reg_date;
	}

	public void setOrder_reg_date(Date order_reg_date) {
		this.order_reg_date = order_reg_date;
	}

	public Date getOrder_update_date() {
		return order_update_date;
	}

	public void setOrder_update_date(Date order_update_date) {
		this.order_update_date = order_update_date;
	}

	public int getOrder_state() {
		return order_state;
	}

	public void setOrder_state(int order_state) {
		this.order_state = order_state;
	}

	public int getWare_code() {
		return ware_code;
	}

	public void setWare_code(int ware_code) {
		this.ware_code = ware_code;
	}

	public int getPro_code() {
		return pro_code;
	}

	public void setPro_code(int pro_code) {
		this.pro_code = pro_code;
	}

	public int getEmp_code() {
		return emp_code;
	}

	public void setEmp_code(int emp_code) {
		this.emp_code = emp_code;
	}

	public int getStm_code() {
		return stm_code;
	}

	public void setStm_code(int stm_code) {
		this.stm_code = stm_code;
	}

	public CompanyVO getCompany() {
		return company;
	}

	public void setCompany(CompanyVO company) {
		this.company = company;
	}

	public WarehouseVO getWarehouse() {
		return warehouse;
	}

	public void setWarehouse(WarehouseVO warehouse) {
		this.warehouse = warehouse;
	}

	public ProductVO getProduct() {
		return product;
	}

	public void setProduct(ProductVO product) {
		this.product = product;
	}

	public EmployeeVO getEmployee() {
		return employee;
	}

	public void setEmployee(EmployeeVO employee) {
		this.employee = employee;
	}

	public StockInOrderVO getStockInOrder() {
		return stockInOrder;
	}

	public void setStockInOrder(StockInOrderVO stockInOrder) {
		this.stockInOrder = stockInOrder;
	}

	public StockOutOrderVO getStockOutOrder() {
		return stockOutOrder;
	}

	public void setStockOutOrder(StockOutOrderVO stockOutOrder) {
		this.stockOutOrder = stockOutOrder;
	}
	
}
