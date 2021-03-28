package com.project.UsERP.vo;

import java.util.Date;

public class StockAdjustVO {
	
	private int adj_modify;		// 조정재고
	private int adj_complete;	// 조정 후 재고
	private Date adj_reg_date;	// 등록일
	private int adj_state;		// 조정상태
	private int ware_code;		// 창고번호
	private int pro_code;		// 상품코드
	private int order_code;		// 재고전표번호
	WarehouseVO warehouse;
	ProductVO product;
	StockOrderVO stockOrder;
	
	public int getAdj_complete() {
		return adj_complete;
	}
	
	public void setAdj_complete(int adj_complete) {
		this.adj_complete = adj_complete;
	}

	public int getAdj_modify() {
		return adj_modify;
	}

	public void setAdj_modify(int adj_modify) {
		this.adj_modify = adj_modify;
	}

	public Date getAdj_reg_date() {
		return adj_reg_date;
	}

	public void setAdj_reg_date(Date adj_reg_date) {
		this.adj_reg_date = adj_reg_date;
	}

	public int getAdj_state() {
		return adj_state;
	}

	public void setAdj_state(int adj_state) {
		this.adj_state = adj_state;
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

	public int getOrder_code() {
		return order_code;
	}

	public void setOrder_code(int order_code) {
		this.order_code = order_code;
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
