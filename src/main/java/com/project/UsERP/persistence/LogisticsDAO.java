package com.project.UsERP.persistence;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.ProductVO;
import com.project.UsERP.vo.WarehouseVO;

public interface LogisticsDAO {

	// 양품창고 등록
	public int insertGoodWare(WarehouseVO vo);
	
	// 불량품창고 등록
	public int insertBadWare(WarehouseVO vo);
	
	// 출고대기창고 등록
	public int insertWaitWare(WarehouseVO vo);
	
	// 창고 목록
	public List<WarehouseVO> warehouseList();

	// 창고 상세 목록
	public WarehouseVO warehouseDetail(int code);
	
	// 검색 거래처 갯수 구하기
	public int getCompanyCnt(String compKeyword);
	
	// 검색 거래처 조회
	public List<CompanyVO> CompanyList(Map<String, Object> map);
	
	// 검색 상품 갯수 구하기
	public int getProductCnt(String proKeyword);
	
	// 검색 상품 조회
	public List<ProductVO> ProductList(Map<String, Object> map);
	
	
	
	
}
