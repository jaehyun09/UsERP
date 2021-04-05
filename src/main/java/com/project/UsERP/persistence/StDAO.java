package com.project.UsERP.persistence;

import java.util.List;
import java.util.Map;

import com.project.UsERP.vo.AccountStatementVO;
import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.ProductVO;
import com.project.UsERP.vo.StockVO;

public interface StDAO {
	
	// 최유성 - 판매 거래처 목록
	public List<CompanyVO> salesCompanySelect();

	// 최유성 - 상품 목록
	public List<ProductVO> salesProductSelect();

	// 이재홍 - 판매내역 
	public List<AccountStatementVO> salesList();

	// 김민수 - 검색 재고 현황 갯수 구하기
	public int getStockCnt(String ssKeyword);
	
	// 김민수 - 검색 재고 현황 조회(페이징)
	public List<StockVO> StockStatusList(Map<String, Object> map);
	
	
}
