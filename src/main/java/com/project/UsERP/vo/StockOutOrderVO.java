package com.project.UsERP.vo;

import oracle.sql.DATE;

public class StockOutOrderVO {
	
	private int out_count;			// 판매수량
	private int out_possible;		// 출고가능수량
	private int out_impossible;		// 부족수량
	private DATE out_date;			// 출고일자
	private int order_code;			// 재고전표번호
	
	public int getOrder_code() {
		return order_code;
	}
	
	public void setOrder_code(int order_code) {
		this.order_code = order_code;
	}

	public int getOut_count() {
		return out_count;
	}

	public void setOut_count(int out_count) {
		this.out_count = out_count;
	}

	public int getOut_possible() {
		return out_possible;
	}

	public void setOut_possible(int out_possible) {
		this.out_possible = out_possible;
	}

	public int getOut_impossible() {
		return out_impossible;
	}

	public void setOut_impossible(int out_impossible) {
		this.out_impossible = out_impossible;
	}

	public DATE getOut_date() {
		return out_date;
	}

	public void setOut_date(DATE out_date) {
		this.out_date = out_date;
	}
	
}
