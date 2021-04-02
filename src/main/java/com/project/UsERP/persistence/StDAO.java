package com.project.UsERP.persistence;

import java.util.List;

import com.project.UsERP.vo.AccountStatementVO;
import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.LogisticsStatementVO;
import com.project.UsERP.vo.ProductVO;

public interface StDAO {

	// 강재현 : 기초등록 - 판매 거래처 목록
	public List<CompanyVO> salesCompanySelect();

	// 강재현 : 기초등록 - 상품 목록
	public List<ProductVO> salesProductSelect();

	// 강재현 : 재고현황

	// 이재홍 : 판매 현황 - 판매 내역 & 승인 내역
	public List<AccountStatementVO> salesList();

	// 이재홍 : 판매 전표 등록
	public int insertSalesStatement(AccountStatementVO vo);

	// 강재현 : 출고현황 - 출고 내역
	public List<LogisticsStatementVO> logisticsList();

	// 강재현 : 출고현황 - 출고 전표 등록 insertLogsStatement
	public int insertLogsStatement(LogisticsStatementVO vo);
}
