package com.project.UsERP.vo;

public class MoveWarehouse {
	
	private int move_amount;	// 이동수량
	private int move_state;		// 이동상태
	private int order_code;		// 재고전표번호
	private int ware_code;		// 창고번호
	StockOrderVO stockOrder;
	WarehouseVO warehouse;
	
	public int getMove_amount() {
		return move_amount;
	}
	
	public void setMove_amount(int move_amount) {
		this.move_amount = move_amount;
	}

	public int getMove_state() {
		return move_state;
	}

	public void setMove_state(int move_state) {
		this.move_state = move_state;
	}

	public int getOrder_code() {
		return order_code;
	}

	public void setOrder_code(int order_code) {
		this.order_code = order_code;
	}

	public int getWare_code() {
		return ware_code;
	}

	public void setWare_code(int ware_code) {
		this.ware_code = ware_code;
	}

	public StockOrderVO getStockOrder() {
		return stockOrder;
	}

	public void setStockOrder(StockOrderVO stockOrder) {
		this.stockOrder = stockOrder;
	}

	public WarehouseVO getWarehouse() {
		return warehouse;
	}

	public void setWarehouse(WarehouseVO warehouse) {
		this.warehouse = warehouse;
	}
	
}
