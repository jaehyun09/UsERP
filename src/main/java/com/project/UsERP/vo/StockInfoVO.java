package com.project.UsERP.vo;

public class StockInfoVO {
	
	private int stock_info_amount;	// 재고수량
	private int ware_code;			// 창고번호
	private int order_code;			// 재고전표번호
	private int pro_cdoe;			// 상품코드
	WarehouseVO warehouse;
	StockOrderVO stockOrder;
	ProductVO product;
	
	public int getOrder_code() {
		return order_code;
	}
	
	public void setOrder_code(int order_code) {
		this.order_code = order_code;
	}

	public int getStock_info_amount() {
		return stock_info_amount;
	}

	public void setStock_info_amount(int stock_info_amount) {
		this.stock_info_amount = stock_info_amount;
	}

	public int getWare_code() {
		return ware_code;
	}

	public void setWare_code(int ware_code) {
		this.ware_code = ware_code;
	}

	public int getPro_cdoe() {
		return pro_cdoe;
	}

	public void setPro_cdoe(int pro_cdoe) {
		this.pro_cdoe = pro_cdoe;
	}

	public WarehouseVO getWarehouse() {
		return warehouse;
	}

	public void setWarehouse(WarehouseVO warehouse) {
		this.warehouse = warehouse;
	}

	public StockOrderVO getStockOrder() {
		return stockOrder;
	}

	public void setStockOrder(StockOrderVO stockOrder) {
		this.stockOrder = stockOrder;
	}

	public ProductVO getProduct() {
		return product;
	}

	public void setProduct(ProductVO product) {
		this.product = product;
	}
	
}
