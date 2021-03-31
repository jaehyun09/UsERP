package com.project.UsERP.persistence;

import java.util.List;
import java.util.Map;

import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.ProductVO;
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
	
	// 김민수 - 검색 거래처 갯수 구하기
	public int getCompanyCnt(String compKeyword);
	
	// 김민수 - 검색 거래처 조회
	public List<CompanyVO> CompanyList(Map<String, Object> map);
	
	// 김민수 - 검색 상품 갯수 구하기
	public int getProductCnt(String proKeyword);
	
	// 김민수 - 검색 상품 조회
	public List<ProductVO> ProductList(Map<String, Object> map);
	
}
