package com.project.UsERP.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;


import com.project.UsERP.persistence.StDAO;
import com.project.UsERP.vo.AccountStatementVO;
import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.LogisticsStatementVO;
import com.project.UsERP.vo.ProductVO;

@Service
public class StServiceImpl implements StService {

	@Autowired
	StDAO stdao;

	// 강재현 : 기초등록 - 판매 거래처 목록 & 상품 목록
	@Override
	public void salesBasicReg(HttpServletRequest req, Model model) {
		// 판매 거래처 목록
		List<CompanyVO> company = stdao.salesCompanySelect();
		// 상품 목록
		List<ProductVO> product = stdao.salesProductSelect();

		model.addAttribute("company", company);
		model.addAttribute("product", product);
	}
	
	// 강재현 : 재고현황

	// 이재홍 : 판매 현황 - 판매 내역 & 승인 내역
	@Override
	public void salesStatus(HttpServletRequest req, Model model) {
		List<AccountStatementVO> list = stdao.salesList();
		model.addAttribute("sales", list);

	}
	
	// 이재홍 : 판매 전표 등록
	@Override
    public void insertSalesStatement(HttpServletRequest req, Model model) {
		
		
       AccountStatementVO vo = new AccountStatementVO();
       vo.setAccs_type(Integer.parseInt(req.getParameter("accs_type")));
    }
	
	// 강재현 : 출고현황 - 출고 내역
	@Override
	public void salesRecStatus(HttpServletRequest req, Model model) {
		List<LogisticsStatementVO> strel = stdao.logisticsList();
		model.addAttribute("strel", strel);
	}
	
	// 강재현 : 출고현황 - 출고 전표 등록
	
}
