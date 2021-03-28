package com.project.UsERP.vo;

import java.util.Date;

public class StockSupplyVO {

	private Date sup_reg_date;		// 일자
	private int sup_classify;		// 분류
	private int sup_plus;			// 수량증가
	private int sup_minus;			// 수량감소
	private int sup_amount;			// 재고수량
	private int order_code;			// 재고전표번호
	private int pro_code;			// 상품코드
	private int ware_code;			// 창고번호
	WarehouseVO warehouse;
	ProductVO product;
	StockOrderVO stockOrder;
	
	public int getOrder_code() {
		return order_code;
	}
	
	public void setOrder_code(int order_code) {
		this.order_code = order_code;
	}

	public Date getSup_reg_date() {
		return sup_reg_date;
	}

	public void setSup_reg_date(Date sup_reg_date) {
		this.sup_reg_date = sup_reg_date;
	}

	public int getSup_classify() {
		return sup_classify;
	}

	public void setSup_classify(int sup_classify) {
		this.sup_classify = sup_classify;
	}

	public int getSup_plus() {
		return sup_plus;
	}

	public void setSup_plus(int sup_plus) {
		this.sup_plus = sup_plus;
	}

	public int getSup_minus() {
		return sup_minus;
	}

	public void setSup_minus(int sup_minus) {
		this.sup_minus = sup_minus;
	}

	public int getSup_amount() {
		return sup_amount;
	}

	public void setSup_amount(int sup_amount) {
		this.sup_amount = sup_amount;
	}

	public int getPro_code() {
		return pro_code;
	}

	public void setPro_code(int pro_code) {
		this.pro_code = pro_code;
	}

	public int getWare_code() {
		return ware_code;
	}

	public void setWare_code(int ware_code) {
		this.ware_code = ware_code;
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

	public StockOrderVO getStockOrder() {
		return stockOrder;
	}

	public void setStockOrder(StockOrderVO stockOrder) {
		this.stockOrder = stockOrder;
	}
	
}
