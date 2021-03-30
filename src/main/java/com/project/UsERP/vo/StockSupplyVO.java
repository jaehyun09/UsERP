package com.project.UsERP.vo;

import java.util.Date;

// 재고수불부
public class StockSupplyVO {
	
	private int stsu_code;			// 재고수불부코드
	private Date stsu_reg_date;		// 일자
	private int stsu_type;			// 유형
	private int ware_code;			// 창고번호
	private int sto_code;			// 재고코드
	private int pro_code;			// 상품코드
	WarehouseVO warehouse;
	StockVO	stock;
	ProductVO product;
	
	public int getStsu_code() {
		return stsu_code;
	}
	public void setStsu_code(int stsu_code) {
		this.stsu_code = stsu_code;
	}
	public Date getStsu_reg_date() {
		return stsu_reg_date;
	}
	public void setStsu_reg_date(Date stsu_reg_date) {
		this.stsu_reg_date = stsu_reg_date;
	}
	public int getStsu_type() {
		return stsu_type;
	}
	public void setStsu_type(int stsu_type) {
		this.stsu_type = stsu_type;
	}
	public int getWare_code() {
		return ware_code;
	}
	public void setWare_code(int ware_code) {
		this.ware_code = ware_code;
	}
	public int getSto_code() {
		return sto_code;
	}
	public void setSto_code(int sto_code) {
		this.sto_code = sto_code;
	}
	public int getPro_code() {
		return pro_code;
	}
	public void setPro_code(int pro_code) {
		this.pro_code = pro_code;
	}
	public WarehouseVO getWarehouse() {
		return warehouse;
	}
	public void setWarehouse(WarehouseVO warehouse) {
		this.warehouse = warehouse;
	}
	public StockVO getStock() {
		return stock;
	}
	public void setStock(StockVO stock) {
		this.stock = stock;
	}
	public ProductVO getProduct() {
		return product;
	}
	public void setProduct(ProductVO product) {
		this.product = product;
	}
	
}
