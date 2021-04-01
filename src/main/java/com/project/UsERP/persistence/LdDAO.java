package com.project.UsERP.persistence;

import java.util.List;
import java.util.Map;

import com.project.UsERP.vo.StockVO;
import com.project.UsERP.vo.WarehouseVO;

public interface LdDAO {
	
	// 최유성 - 입고내역 미승인
	public List<StockVO> stockInOrder1();
	
	// 최유성 - 입고내역 승인
	public List<StockVO> stockInOrder2();
	
	// 최유성 - 출고내역 미승인
	public List<StockVO> stockOutOrder1();
	
	// 최유성 - 출고내역 승인
	public List<StockVO> stockOutOrder2();

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
	

	// 김민수 - 검색 재고 현황 갯수 구하기
	public int getStockCnt(String ssKeyword);
	   
	// 김민수 - 검색 재고 현황 조회(페이징)
	public List<StockVO> StockStatusList(Map<String, Object> map);

}
