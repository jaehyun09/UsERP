package com.project.UsERP.persistence;

import java.util.List;
import java.util.Map;

import com.project.UsERP.vo.AccountStatementVO;
import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.LogisticsStatementVO;
import com.project.UsERP.vo.ProductVO;
import com.project.UsERP.vo.StockVO;

public interface PdDAO {
	
	// 최유성 - 구매 거래처 목록
	public List<CompanyVO> pdCompanySelect();

	// 최유성 - 상품 목록
	public List<ProductVO> pdProductSelect();
	
	// 최유성 - 입고 내역
	public List<LogisticsStatementVO> pdStockInOrder();
	
	// 최유성 회계 전표 승인 내역
	public List<AccountStatementVO> AccountStatement();
	
	// 최유성 - 입고 전표 등록
	public AccountStatementVO getAccountStatement(int accs_code);
	
	// 이재홍 - 구매 내역
	public List<AccountStatementVO> buyList();
	
	// 김민수 - 검색 재고 현황 갯수 구하기
	public int getStockCnt(String ssKeyword);
	
	// 김민수 - 검색 재고 현황 조회(페이징)
	public List<StockVO> StockStatusList(Map<String, Object> map);

}
