package com.project.UsERP.persistence;

import java.util.List;

import com.project.UsERP.vo.StockOrderVO;

public interface LogisticsDAO {
	
	//입고내역 미승인
	public List<StockOrderVO> stockInOrder1();
	
	//입고내역 승인
	public List<StockOrderVO> stockInOrder2();
	
	//출고내역 미승인
	public List<StockOrderVO> stockOutOrder1();
	
	//출고내역 승인
	public List<StockOrderVO> stockOutOrder2();

}
