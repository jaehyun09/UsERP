package com.project.UsERP.persistence;

import java.util.List;

import com.project.UsERP.vo.AccountStatementVO;
import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.LogisticsStatementVO;
import com.project.UsERP.vo.ProductVO;

public interface StDAO {

	// 강재현 - 기초등록 - 판매 거래처 목록
	public List<CompanyVO> salesCompanySelect();
	
	// 강재현 - 기초등록 - 판매 거래처 목록 상세페이지
	public CompanyVO companyDetail(int com_code);

	// 강재현 - 기초등록 - 상품 목록
	public List<ProductVO> salesProductSelect();

	// 강재현 - 재고현황

	// 이재홍 - 판매 현황 - 판매 내역 & 승인 내역
	public List<AccountStatementVO> salesList();

	// 이재홍 - 판매 현황 - 판매 전표 상세 페이지
	public AccountStatementVO stStatementDetail(int num);

	// 이재홍 - 판매 현황 - 판매 전표 등록
	public int insertSalesStatement(AccountStatementVO vo);
	
	// 강재현 - 출고현황 - 출고 내역
	public List<LogisticsStatementVO> logisticsList();
	
	// 강재현 - 판매 현황 - 회계 전표 내역
	public List<AccountStatementVO> stList();

	// 강재현 - 출고현황 - 출고 전표 등록 - 회계 전표 내역 상세
	public AccountStatementVO insertList(int accs_code);

	// 강재현 - 출고현황 - 출고 전표 등록 
	public int insertLogsStatement(LogisticsStatementVO vo);

	// 강재현 - 출고현황 - 출고 전표 등록시 회계전표 상태코드 변화
	public int updatestatement(AccountStatementVO vo1);
}
