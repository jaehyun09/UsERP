package com.project.UsERP.persistence;

import java.util.List;

import com.project.UsERP.vo.AccountStatementVO;
import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.LogisticsStatementVO;
import com.project.UsERP.vo.ProductVO;

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

}
