package com.project.UsERP.persistence;

import java.util.List;
import java.util.Map;

import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.ProductVO;
import com.project.UsERP.vo.StockSupplyVO;
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
	public WarehouseVO warehouseDetail(int ware_code);
	
	// 김민수 - 검색 거래처 갯수 구하기
	public int getCompanyCnt(String compKeyword);
	
	// 김민수 - 검색 거래처 조회
	public List<CompanyVO> CompanyList(Map<String, Object> map);
	
	// 김민수 - 검색 상품 갯수 구하기
	public int getProductCnt(String proKeyword);
	
	// 김민수 - 검색 상품 조회
	public List<ProductVO> ProductList(Map<String, Object> map);
	
	// 김민수 - 검색 재고 현황 갯수 구하기
	public int getStockCnt(String ssKeyword);
	
	// 김민수 - 검색 재고 현황 조회(페이징)
	public List<StockVO> StockStatusList(Map<String, Object> map);
	
	// 김민수 - 재고 관리 상품 조회
	public List<ProductVO> selectProduct();
	
	// 김민수 - 재고 관리 창고 조회
	public List<WarehouseVO> selectWarehouse();
	
	// 김민수 - 재고 이동 재고테이블 가져오기
	public StockVO stockDefaultList();
	
	// 김민수 - 재고 이동 재고테이블 여부 확인
	public StockVO stockState (Map<String, Object> stateMap);
	
	// 김민수 - 재고 이동 재고 테이블 불량품 창고 등록
	public int stockBadWare(StockVO stockVo);
	
	// 김민수 - 재고 이동 출발창고 수량 변경
	public int stoMinusUpdate(Map<String, Object> minusMap);
	
	// 김민수 - 재고 이동 도착창고 수량 변경
	public int stoPlusUpdate(Map<String, Object> plusMap);
	
	// 김민수 - 재고 이동 재고테이블 수량 가져오기
	public String getStoQuantity(Map<String, Object> quantityMap);
	
	// 김민수 - 재고 이동 출발창고이름 가져오기
	public String getStartWareName(int startwh);
	
	// 김민수 - 재고 이동 도착창고이름 가져오기
	public String getArriveWareName(int arrivewh);
	
	// 김민수 - 재고 이동 재고수불부 등록
	public int stsuMoveInsert(StockSupplyVO stockSupplyVO);
	
	// 김민수 - 재고 이동 갯수 구하기
	public int getMoveWarehouse();
	
	// 김민수 - 재고 이동 내역 조회
	public List<StockSupplyVO> moveWarehouseList(Map<String, Object> map);
	
}
