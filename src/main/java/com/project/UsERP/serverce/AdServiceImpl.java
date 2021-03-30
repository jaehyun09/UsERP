package com.project.UsERP.serverce;

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
public class AdServiceImpl implements AdService{
	

	@Autowired
	AdDAO addao;

	// 강재현 - 회계보고서 - 재무상태표

	// 이재홍 - 회계보고서 - 손익계산서

	// 이재홍 - 계좌 관리 - 계좌 리스트
	public void bankList(HttpServletRequest req, Model model) {
		List<BankVO> list = addao.bankList();

		model.addAttribute("bank", list);
	}
	
	// 강재현 - 계정 관리 - 계정 리스트
	public void accountList(HttpServletRequest req, Model model) {
		
		List<AccountVO> list = addao.accontList();

		model.addAttribute("account", list);
		
	}

	// 강재현 - 전표 관리 - 회계 전표
	public void statementList(HttpServletRequest req, Model model) {
		List<AccountStatementVO> list = addao.statementList();

		model.addAttribute("statement", list);
	}
	// 강재현 - 전표 관리 - 회계 전표 상세페이지 
	

	// 강재현 - 전표 관리 - 회계 전표 (승인)

	// 강재현 - 전표 관리 - 회계 전표 (승인거부)

	// 강재현 - 전표 관리 - 급여 전표
	public void salarystatementList(HttpServletRequest req, Model model) {
		List<SalaryStatementVO> list = addao.salarystatementList();

		model.addAttribute("salarystatement", list);
	}

	// 강재현 - 전표 관리 - 급여 전표 상세페이지
	
	// 강재현 - 전표 관리 - 급여 전표 (승인)

	// 강재현 - 전표 관리 - 급여 전표 (승인거부)
	
	// 이재홍 - 채권/채무 조회

}
