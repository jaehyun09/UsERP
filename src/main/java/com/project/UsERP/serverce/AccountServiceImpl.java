package com.project.UsERP.serverce;

import java.util.List;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.project.UsERP.persistence.AccountDAO;
import com.project.UsERP.vo.AccountVO;
import com.project.UsERP.vo.BankVO;
import com.project.UsERP.vo.SalaryStatementVO;
import com.project.UsERP.vo.StatementVO;

@Service
public class AccountServiceImpl implements AccountService {

	@Autowired
	AccountDAO accountdao;

	// 회계보고서 - 재무상태표

	// 회계보고서 - 손익계산서

	// 계좌 관리 - 계좌 리스트
	public void bankList(HttpServletRequest req, Model model) {
		List<BankVO> list = accountdao.bankList();

		model.addAttribute("bank", list);
	}
	
	// 계정 관리 - 계정 리스트
	public void accountList(HttpServletRequest req, Model model) {
		
		List<AccountVO> list = accountdao.accontList();

		model.addAttribute("account", list);
		
	}

	// 전표 관리 - 회계 전표
	public void statementList(HttpServletRequest req, Model model) {
		List<StatementVO> list = accountdao.statementList();

		model.addAttribute("statement", list);
	}

	// 전표 관리 - 회계 전표 (승인)

	// 전표 관리 - 회계 전표 (미승인)

	// 전표 관리 - 급여 전표
	public void salarystatementList(HttpServletRequest req, Model model) {
		List<SalaryStatementVO> list = accountdao.salarystatementList();

		model.addAttribute("salarystatement", list);
	}

	// 전표 관리 - 급여 전표 (승인)

	// 전표 관리 - 급여 전표 (미승인)

	// 채권/채무 조회

}