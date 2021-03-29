package com.project.UsERP.persistence;

import java.util.List;

import com.project.UsERP.vo.StockOrderVO;
import com.project.UsERP.vo.WarehouseVO;

public interface LogisticsDAO {
	
	// 최유성 - 입고내역 미승인
	public List<StockOrderVO> stockInOrder1();
	
	// 최유성 - 입고내역 승인
	public List<StockOrderVO> stockInOrder2();
	
	// 최유성 - 출고내역 미승인
	public List<StockOrderVO> stockOutOrder1();
	
	// 최유성 - 출고내역 승인
	public List<StockOrderVO> stockOutOrder2();

	// 김민수 - 양품창고 등록
	public int insertGoodWare(WarehouseVO vo);
	
	// 김민수 - 불량품창고 등록
	public int insertBadWare(WarehouseVO vo);
	
	// 김민수 - 출고대기창고 등록
	public int insertWaitWare(WarehouseVO vo);
	
	// 김민수 - 창고 목록
	public List<WarehouseVO> warehouseList();

	// 김민수 - 창고 상세 목록
	public WarehouseVO warehouseDetail(int code);
	
}
