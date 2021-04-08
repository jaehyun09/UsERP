package com.project.UsERP.persistence;

import java.util.List;
import java.util.Map;

import com.project.UsERP.vo.AccountStatementVO;
import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.LogisticsStatementVO;
import com.project.UsERP.vo.ProductVO;
import com.project.UsERP.vo.StockVO;

public interface PdDAO {

	// 최유성 - 기초등록 - 구매 거래처 목록
	public List<CompanyVO> purchasingCompanySelect();

	// 최유성 - 기초등록 - 판매 거래처 목록 상세페이지
	public CompanyVO pdcompanyDetail(int com_code);

	// 최유성 - 기초등록 - 상품 목록
	public List<ProductVO> purchasingProductSelect();
	
	// 김민수 - 검색 재고 현황 갯수 구하기
	public int getStockCnt(String ssKeyword);
		
	// 김민수 - 검색 재고 현황 조회(페이징)
	public List<StockVO> StockStatusList(Map<String, Object> map);

	// 이재홍 - 구매 현황 - 구매 내역 & 승인 내역
	public List<AccountStatementVO> buyList();

	// 이재홍 - 구매 현황 - 구매 전표 상세 페이지
	public AccountStatementVO pdStatementDetail(int num);

	// 이재홍 - 구매 현황 - 구매 전표 등록
	public int insertBuyStatement(AccountStatementVO vo);

	// 최유성 - 입고 현황 - 입고 내역
	public List<LogisticsStatementVO> logisticsList();

	// 최유성 - 입고 현황 - 입고 전표 등록 - 회계 전표 내역
	public List<AccountStatementVO> buList();

	// 최유성 - 입고 현황 - 입고 전표 등록 - 회계 전표 내역 상세
	public AccountStatementVO pdinsertList(int accs_code);

	// 최유성 - 입고 현황 - 입고 전표 등록
	public int pdinsertLogsStatement(LogisticsStatementVO vo);

	// 최유성 - 입고 현황 - 입고 전표 등록시 회계전표 상태코드 변화
	public int pdupdatestatement(AccountStatementVO vo1);
	
	// 최유성 - 창고코드 가져 오기 - 창고타입 양품창고 : 1
    public int getWareCode(int ware_type);
}