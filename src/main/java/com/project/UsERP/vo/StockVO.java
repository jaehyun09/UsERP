package com.project.UsERP.vo;

import java.util.Date;

// 재고
public class StockVO {
	
	private int sto_code;			// 재고코드
	private int sto_quantity;		// 재고수량
	private int sto_type;			// 유형
	private int sto_amount;			// 수량
	private int sto_state;			// 상태
	private Date sto_reg_date;		// 등록일
	private String sto_content; 	// 사유
	private String sto_startwh;		// 출발창고
	private String sto_arrivewh;	// 도착창고
	private int ware_code;			// 창고번호
	private int pro_code; 			// 상품코드
	WarehouseVO warehouse;
	ProductVO product;
	
	public int getSto_code() {
		return sto_code;
	}
	public void setSto_code(int sto_code) {
		this.sto_code = sto_code;
	}
	public int getSto_quantity() {
		return sto_quantity;
	}
	public void setSto_quantity(int sto_quantity) {
		this.sto_quantity = sto_quantity;
	}
	public int getSto_type() {
		return sto_type;
	}
	public void setSto_type(int sto_type) {
		this.sto_type = sto_type;
	}
	public int getSto_amount() {
		return sto_amount;
	}
	public void setSto_amount(int sto_amount) {
		this.sto_amount = sto_amount;
	}
	public int getSto_state() {
		return sto_state;
	}
	public void setSto_state(int sto_state) {
		this.sto_state = sto_state;
	}
	public Date getSto_reg_date() {
		return sto_reg_date;
	}
	public void setSto_reg_date(Date sto_reg_date) {
		this.sto_reg_date = sto_reg_date;
	}
	public String getSto_content() {
		return sto_content;
	}
	public void setSto_content(String sto_content) {
		this.sto_content = sto_content;
	}

	public String getSto_startwh() {
		return sto_startwh;
	}
	public void setSto_startwh(String sto_startwh) {
		this.sto_startwh = sto_startwh;
	}
	public String getSto_arrivewh() {
		return sto_arrivewh;
	}
	public void setSto_arrivewh(String sto_arrivewh) {
		this.sto_arrivewh = sto_arrivewh;
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
	
}
