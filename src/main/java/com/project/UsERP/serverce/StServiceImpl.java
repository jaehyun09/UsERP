package com.project.UsERP.serverce;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;


import com.project.UsERP.persistence.StDAO;
import com.project.UsERP.vo.AccountStatementVO;
import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.ProductVO;

@Service
public class StServiceImpl implements StService {

	@Autowired
	StDAO stdao;

	// 최유성 - 기초등록
	@Override
	public void salesBasicReg(HttpServletRequest req, Model model) {
		// 판매 거래처 목록
		List<CompanyVO> Clist = stdao.salesCompanySelect();

		// 상품 목록
		List<ProductVO> Plist = stdao.salesProductSelect();

		model.addAttribute("Clist", Clist);
		model.addAttribute("Plist", Plist);

	}

	// 최유성 - 출고현황
	@Override
	public void salesRecStatus(HttpServletRequest req, Model model) {
		// TODO Auto-generated method stub

	}

	// 이재홍 - 판매현황
	@Override
	public void salesStatus(HttpServletRequest req, Model model) {

		// 판매내역
		List<AccountStatementVO> list = stdao.salesList();

		// 판매전표등록
		// SalesVO vo = new SalesVO();

		// int insertCnt = 0;
		// insertCnt = dao.insertSalesStatement(vo);

		model.addAttribute("sales", list);
		// model.addAttribute("insertCnt", insertCnt);

	}
}
