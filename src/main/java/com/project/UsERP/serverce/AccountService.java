package com.project.UsERP.serverce;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface AccountService {

	// 회계보고서 - 재무상태표

	// 회계보고서 - 손익계산서

	// 계좌 관리 - 계좌 리스트
	public void bankList(HttpServletRequest req, Model model);
	
	// 계정 관리 - 계정 리스트
	public void accountList(HttpServletRequest req, Model model);
	
	// 전표 관리 - 회계 전표
	public void statementList(HttpServletRequest req, Model model);

	// 전표 관리 - 회계 전표 (승인)

	// 전표 관리 - 회계 전표 (미승인)
	
	// 전표 관리 - 급여 전표
	public void salarystatementList(HttpServletRequest req, Model model);
	
	// 전표 관리 - 급여 전표 (승인)

	// 전표 관리 - 급여 전표 (미승인)

	// 채권/채무 조회

}
