package com.project.UsERP.service;

import java.sql.Timestamp;
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
		int price = Integer.parseInt(req.getParameter("accs_price"));
		
		AccountStatementVO vo = new AccountStatementVO();
	
		vo.setAccs_type(Integer.parseInt(req.getParameter("accs_type")));
		vo.setAccs_content(req.getParameter("accs_content"));
		vo.setAccs_price(price);
		vo.setAccs_quantity(Integer.parseInt(req.getParameter("accs_quantity")));
		vo.setAccs_reg_date(new Timestamp(System.currentTimeMillis()));
		vo.setAccs_sum(Integer.parseInt(req.getParameter("accs_sum")));
		vo.setAccs_state(0);
		vo.setEmp_code(Integer.parseInt(req.getParameter("emd_code")));
		vo.setPro_code(Integer.parseInt(req.getParameter("pro_code")));
		vo.setCom_code(Integer.parseInt(req.getParameter("com_code")));
		System.out.println(vo + "vo");
		int insertCnt = stdao.insertSalesStatement(vo);
		
		model.addAttribute("insertCnt", insertCnt);
	}

	// 강재현 : 출고현황 - 출고 내역
	@Override
	public void salesRecStatus(HttpServletRequest req, Model model) {
		List<LogisticsStatementVO> strel = stdao.logisticsList();
		model.addAttribute("strel", strel);
	}

	// 강재현 : 출고현황 - 출고 전표 등록
	// 김은희 - 근태 신청 사원 확인
	@Override
	public void proComfirm(HttpServletRequest req, Model model) {
		int pro_code = Integer.parseInt(req.getParameter("pro_code"));

		ProductVO vo = stdao.proComfirm(pro_code);

		int selectCnt = 0;
		if (vo != null)
			selectCnt = 1;

		model.addAttribute("selectCnt", selectCnt);
		model.addAttribute("vo", vo);
		model.addAttribute("pro_code", pro_code);

	}
}
