package com.project.UsERP.service;

import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.project.UsERP.persistence.AdDAO;
import com.project.UsERP.vo.AccountStatementVO;
import com.project.UsERP.vo.AccountVO;
import com.project.UsERP.vo.BankVO;
import com.project.UsERP.vo.SalaryStatementVO;

@Service
public class AdServiceImpl implements AdService {

	@Autowired
	AdDAO addao;

	// 이재홍 - 기초 등록 - 계좌 리스트
	@Override
	public void bankList(HttpServletRequest req, Model model) {
		List<BankVO> list = addao.bankList();

		model.addAttribute("bank", list);
	}

	// 강재현 - 기초 등록 - 계정 리스트
	@Override
	public void accountList(HttpServletRequest req, Model model) {

		List<AccountVO> list = addao.accountList();

		model.addAttribute("account", list);

	}

	// 강재현 - 회계보고서 - 재무상태표
	@Override
	public void get12(HttpServletRequest req, Model model) {
		int get1 = addao.get1();
		int get2 = addao.get2();
		int get3 = addao.get3();
		int get4 = addao.get4();
		model.addAttribute("get1", get1);
		model.addAttribute("get2", get2);
		model.addAttribute("get3", get3);
		model.addAttribute("get4", get4);
	}

	// 이재홍 - 회계보고서 - 손익계산서
	@Override
	public void sum(HttpServletRequest req, Model model) {
		int sum = addao.sum();
		int sum1 = addao.sum1();
		int sum2 = addao.sum2();
		model.addAttribute("sum", sum);
		model.addAttribute("sum1", sum1);
		model.addAttribute("sum2", sum2);
	}

	// 강재현 - 전표 관리 - 회계 전표 리스트
	@Override
	public void statementList(HttpServletRequest req, Model model) {
		List<AccountStatementVO> list = addao.statementList();

		model.addAttribute("statement", list);
	}

	// 강재현 - 전표 관리 회계 전표 상세페이지
	@Override
	public void content(HttpServletRequest req, Model model) {
		int accs_code = Integer.parseInt(req.getParameter("accs_code"));

		AccountStatementVO list = addao.getStamentDetail(accs_code);

		model.addAttribute("content", list);

	}

	// 강재현 - 전표 관리 - 회계 전표 (승인)
	@Override
	public void acstatmentAction(HttpServletRequest req, Model model) {
		int dep_name = Integer.parseInt(req.getParameter("dep_name"));
		int accs_code = Integer.parseInt(req.getParameter("accs_code"));
		System.out.println("accs_code : " + accs_code);
		AccountStatementVO vo = new AccountStatementVO();
		vo.setAccs_state(1);
		vo.setAccs_update_date(new Timestamp(System.currentTimeMillis()));
		vo.setAccs_code(accs_code);

		int updateCnt = addao.acupdatestatment(vo);

		model.addAttribute("num", accs_code);
		model.addAttribute("updateCnt", updateCnt);

	}

	// 강재현 - 전표 관리 - 회계 전표 (미승인)
	@Override
	public void acstatmentdelAction(HttpServletRequest req, Model model) {

		int accs_code = Integer.parseInt(req.getParameter("accs_code"));
		System.out.println("accs_code : " + accs_code);
		AccountStatementVO vo = new AccountStatementVO();
		vo.setAccs_state(-1);
		vo.setAccs_update_date(new Timestamp(System.currentTimeMillis()));
		vo.setAccs_code(accs_code);
		int deleteCnt = addao.acupdatestatment(vo);

		System.out.println("deleteCnt : " + deleteCnt);

		model.addAttribute("deleteCnt", deleteCnt);

	}

	// 강재현 - 전표 관리 - 급여 전표 리스트
	@Override
	public void salarystatementList(HttpServletRequest req, Model model) {
		List<SalaryStatementVO> list = addao.salarystatementList();
		model.addAttribute("salarystatement", list);
	}

	// 강재현 - 전표 관리 - 급여 전표 상세페이지
	@Override
	public void sacontent(HttpServletRequest req, Model model) {
		int ss_code = Integer.parseInt(req.getParameter("ss_code"));
		SalaryStatementVO list = addao.getsaStamentDetail(ss_code);
		model.addAttribute("sccontent", list);

	}

	// 강재현 - 전표 관리 - 급여 전표 (승인)
	@Override
	public void sastatmentAction(HttpServletRequest req, Model model) {

		int ss_code = Integer.parseInt(req.getParameter("ss_code"));
		System.out.println("ss_code : " + ss_code);
		SalaryStatementVO vo = new SalaryStatementVO();
		vo.setSs_state(1);
		vo.setSs_sal_date(new Timestamp(System.currentTimeMillis()));
		vo.setSs_code(ss_code);
		int updateCnt = addao.saupdatestatment(vo);

		System.out.println("updateCnt : " + updateCnt);

		model.addAttribute("num", ss_code);
		model.addAttribute("updateCnt", updateCnt);

	}

	// 강재현 - 전표 관리 - 급여 전표 (미승인)
	@Override
	public void sastatmentdelAction(HttpServletRequest req, Model model) {

		int ss_code = Integer.parseInt(req.getParameter("ss_code"));
		System.out.println("ss_code : " + ss_code);
		SalaryStatementVO vo = new SalaryStatementVO();
		vo.setSs_state(-1);
		vo.setSs_sal_date(new Timestamp(System.currentTimeMillis()));
		vo.setSs_code(ss_code);
		int deleteCnt = addao.saupdatestatment(vo);

		System.out.println("updateCnt : " + deleteCnt);

		model.addAttribute("num", ss_code);
		model.addAttribute("deleteCnt", deleteCnt);

	}

	// 이재홍 - 전표 관리 - 채권/채무 조회
	@Override
	public void bondDebtList(HttpServletRequest req, Model model) {
		List<AccountStatementVO> list = addao.bondDebtList();

		model.addAttribute("bondDebt", list);
	}

	// 이재홍 - 전표 관리 - 채권/채무 상세페이지
	@Override
	public void bdContent(HttpServletRequest req, Model model) {
		int num = Integer.parseInt(req.getParameter("accs_code"));

		AccountStatementVO list = addao.bdStatementDetail(num);

		model.addAttribute("bdContent", list);
	}
}
