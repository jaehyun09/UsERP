package com.project.UsERP.persistence;

import java.util.List;

import com.project.UsERP.vo.AccountStatementVO;
import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.LogisticsStatementVO;
import com.project.UsERP.vo.ProductVO;

public interface PdDAO {

	// 최유성 - 구매 거래처 목록
	public List<CompanyVO> purchasingCompanySelect();

	// 최유성 - 상품 목록
	public List<ProductVO> purchasingProductSelect();

	// 강재현 - 기초등록 - 판매 거래처 목록 상세페이지
	public CompanyVO pdcompanyDetail(int com_code);

	// 이재홍 - 구매 현황 - 구매 내역 & 승인 내역
	public List<AccountStatementVO> buyList();

	// 이재홍 - 구매 현황 - 구매 전표 상세 페이지
	public AccountStatementVO pdStatementDetail(int num);

	// 이재홍 - 구매 현황 - 구매 전표 등록
	public int insertBuyStatement(AccountStatementVO vo);

	// 강재현 - 출고현황 - 출고 내역
	public List<LogisticsStatementVO> logisticsList();

	// 강재현 - 입고 현황 - 입고 전표 등록 - 회계 전표 내역
	public List<AccountStatementVO> buList();

	// 강재현 - 출고현황 - 출고 전표 등록 - 회계 전표 내역 상세
	public AccountStatementVO pdinsertList(int accs_code);

	// 강재현 - 출고현황 - 출고 전표 등록
	public int pdinsertLogsStatement(LogisticsStatementVO vo);

	// 강재현 - 출고현황 - 출고 전표 등록시 회계전표 상태코드 변화
	public int pdupdatestatement(AccountStatementVO vo1);
}