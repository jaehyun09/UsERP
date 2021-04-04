package com.project.UsERP.service;

import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.project.UsERP.persistence.PdDAO;
import com.project.UsERP.vo.AccountStatementVO;
import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.LogisticsStatementVO;
import com.project.UsERP.vo.ProductVO;

@Service
public class PdServiceImpl implements PdService {

	@Autowired
	PdDAO pddao;

	// 최유성 - 기초등록
	@Override
	public void purBasicReg(HttpServletRequest req, Model model) {

		// 구매 거래처 목록
		List<CompanyVO> company = pddao.purchasingCompanySelect();

		// 상품 목록
		List<ProductVO> product = pddao.purchasingProductSelect();

		model.addAttribute("company", company);
		model.addAttribute("product", product);

	}

	// 강재현 - 기초등록 - 판매 거래처 목록 상세페이지
	public void pdcomContent(HttpServletRequest req, Model model) {
		int com_code = Integer.parseInt(req.getParameter("com_code"));
		CompanyVO company = pddao.pdcompanyDetail(com_code);

		model.addAttribute("company", company);
	}

	// 최유성 - 입고현황
	@Override
	public void purRecStatus(HttpServletRequest req, Model model) {

		// 구매 거래처 목록
		// List<StockOrderVO> SOlist = dao.();

		// 상품 목록
		// List<StockInOrderVO> SIOlist = dao.();

	}

	// 이재홍 - 구매현황 - 구매 내역 & 승인 내역
	@Override
	public void purStatus(HttpServletRequest req, Model model) {
		List<AccountStatementVO> list = pddao.buyList();
		model.addAttribute("buy", list);

	}

	// 이재홍 - 구매현황 - 구매 내역 상세페이지
	@Override
	public void pdContent(HttpServletRequest req, Model model) {
		int num = Integer.parseInt(req.getParameter("accs_code"));

		AccountStatementVO list = pddao.pdStatementDetail(num);

		model.addAttribute("pdContent", list);
	}

	// 이재홍 - 구매현황 - 구매 전표 등록
	@Override
	public void insertBuyStatement(HttpServletRequest req, Model model) {
		int price = Integer.parseInt(req.getParameter("accs_price"));

		AccountStatementVO vo = new AccountStatementVO();

		vo.setAccs_type(Integer.parseInt(req.getParameter("accs_type")));
		vo.setAccs_content(req.getParameter("accs_content"));
		vo.setAccs_price(price);
		vo.setAccs_quantity(Integer.parseInt(req.getParameter("accs_quantity")));
		vo.setAccs_reg_date(new Timestamp(System.currentTimeMillis()));
		vo.setAccs_sum(Integer.parseInt(req.getParameter("accs_sum")));
		vo.setAccs_state(0);
		vo.setEmp_code(req.getParameter("emp_code"));
		vo.setPro_code(Integer.parseInt(req.getParameter("pro_code")));
		vo.setCom_code(Integer.parseInt(req.getParameter("com_code")));
		System.out.println(vo + "vo");
		int insertCnt = pddao.insertBuyStatement(vo);

		model.addAttribute("insertCnt", insertCnt);

	}

// 강재현 - 출고현황 - 출고 내역
	@Override
	public void buyRecStatus(HttpServletRequest req, Model model) {
		List<LogisticsStatementVO> purel = pddao.logisticsList();
		model.addAttribute("purel", purel);
	}

	// 강재현 - 판매 현황 - 회계 전표 내역
	@Override
	public void buList(HttpServletRequest req, Model model) {
		List<AccountStatementVO> acco = pddao.buList();
		model.addAttribute("acco", acco);

	}

	// 강재현 - 출고현황 - 회계 전표 내역 상세
	@Override
	public void pdselectList(HttpServletRequest req, Model model) {
		int accs_code = Integer.parseInt(req.getParameter("accs_code"));
		AccountStatementVO account = pddao.pdinsertList(accs_code);

		model.addAttribute("account", account);
	}

	// 강재현 - 출고현황 - 출고 전표 등록
	@Override
	public void pdinsertLogsStatement(HttpServletRequest req, Model model) {
		LogisticsStatementVO vo = new LogisticsStatementVO();

		vo.setLogs_type(5);
		vo.setLogs_reg_date(new Timestamp(System.currentTimeMillis()));
		vo.setLogs_state(0);
		vo.setLogs_quantity(Integer.parseInt(req.getParameter("logs_quantity")));
		vo.setEmp_code(req.getParameter("emp_code"));
		vo.setPro_code(Integer.parseInt(req.getParameter("pro_code")));
		vo.setCom_code(Integer.parseInt(req.getParameter("com_code")));

		int insertCnt = pddao.pdinsertLogsStatement(vo);

		AccountStatementVO vo1 = new AccountStatementVO();
		vo1.setAccs_state(3);
		vo1.setAccs_code(Integer.parseInt(req.getParameter("accs_code")));

		int intsterCnt2 = pddao.pdupdatestatement(vo1);

		model.addAttribute("insertCnt1", insertCnt);
		model.addAttribute("intsterCnt1", intsterCnt2);

	}
}