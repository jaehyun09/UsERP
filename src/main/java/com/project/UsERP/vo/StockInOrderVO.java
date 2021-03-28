package com.project.UsERP.vo;

import java.util.Date;

public class StockInOrderVO {
	
	private int in_count;		// 구매수량
	private Date in_date;		// 입고일자
	private int order_code;		// 재고전표번호
	
	public int getIn_count() {
		return in_count;
	}
	
	public void setIn_count(int in_count) {
		this.in_count = in_count;
	}

	public Date getIn_date() {
		return in_date;
	}

	public void setIn_date(Date in_date) {
		this.in_date = in_date;
	}

	public int getOrder_code() {
		return order_code;
	}

	public void setOrder_code(int order_code) {
		this.order_code = order_code;
	}
	
}
