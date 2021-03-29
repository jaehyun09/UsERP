package com.project.UsERP.persistence;

import java.util.List;

import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.ProductVO;
import com.project.UsERP.vo.SalesVO;

public interface SalesDAO {

	// 최유성 - 판매 거래처 목록
	public List<CompanyVO> salesCompanySelect();

	// 최유성 - 상품 목록
	public List<ProductVO> salesProductSelect();

	// 이재홍 - 판매내역 
	public List<SalesVO> salesList();
}
