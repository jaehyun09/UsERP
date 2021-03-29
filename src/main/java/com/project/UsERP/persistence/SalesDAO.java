package com.project.UsERP.persistence;

import java.util.List;

import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.ProductVO;
import com.project.UsERP.vo.SalesVO;

//최유성
public interface SalesDAO {

	// 판매 거래처 목록
	public List<CompanyVO> salesCompanySelect();

	// 상품 목록
	public List<ProductVO> salesProductSelect();

	// 판매내역 ㅈㅎ
	public List<SalesVO> salesList();
}
