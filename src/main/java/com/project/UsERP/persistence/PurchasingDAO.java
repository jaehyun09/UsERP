package com.project.UsERP.persistence;

import java.util.List;

import com.project.UsERP.vo.BuyVO;
import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.ProductVO;

public interface PurchasingDAO {

	// 구매 거래처 목록
	public List<CompanyVO> purchasingCompanySelect();

	// 상품 목록
	public List<ProductVO> purchasingProductSelect();

	// 구매 내역
	public List<BuyVO> buyList();
}
