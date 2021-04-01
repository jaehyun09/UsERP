package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.UsERP.service.AdServiceImpl;

// 회계 관리
@Controller
public class AdController {

	private static final Logger logger = LoggerFactory.getLogger(AdController.class);

	@Autowired
	AdServiceImpl adservice;

	// 기초 등록
	@RequestMapping("/adBasicReg")
	public String adBasicReg(HttpServletRequest req, Model model) {
		logger.info("url: 기초 등록");

		return "ad/adBasicReg";
	}

	// 이재홍 : 기초 등록 - 계좌 관리 - 계좌 리스트
	@RequestMapping("/banklist")
	public String banklist(HttpServletRequest req, Model model) {
		logger.info("url: 계정 관리 - 계정 리스트");

		adservice.bankList(req, model);

		return "ad/ajax/banklist";
	}

	// 이재홍 : 기초 등록 - 계좌 관리 - 리액트 계좌 등록
	@RequestMapping("/bankadd")
	public String bankadd(HttpServletRequest req, Model model) {
		logger.info("url: 리액트 계좌 등록");

		return "ad/ajax/bank";
	}

	// 강재현 : 기초 등록 - 계정 관리 - 계정 리스트
	@RequestMapping("/accountlist")
	public String accountlist(HttpServletRequest req, Model model) {
		logger.info("url: 강재현 : 계정 관리 - 계정 리스트");

		adservice.accountList(req, model);

		return "ad/ajax/accountList";
	}

	// 강재현 : 기초 등록 - 계정 관리 - 리액트 계정 등록
	@RequestMapping("/accountadd")
	public String accountadd(HttpServletRequest req, Model model) {
		logger.info("url: 강재현 : 기초 등록 - 계정 관리 - 리액트 계정 등록");

		return "ad/ajax/account";
	}

	// 회계보고서
	@RequestMapping("/adReport")
	public String adReport(HttpServletRequest req, Model model) {
		logger.info("url: 강재현 & 이재홍 : 회계 보고서");
		// 강재현 : 재무상태표 
		adservice.get12(req, model);
		
		return "ad/adReport";
	}

	// 전표 관리
	@RequestMapping("/adStatementManagement")
	public String adStatementManagement(HttpServletRequest req, Model model) {
		logger.info("url: 강재현 & 이재홍 : 전표 관리");

		// 강재현 : 회계 전표 리스트
		adservice.statementList(req, model);

		// 강재현 : 급여 전표 리스트
		adservice.salarystatementList(req, model);

		// 이재홍 : 채권,채무 전표 조회
		adservice.bondDebtList(req, model);
		return "ad/adStatementManagement";
	}

	// 강재현 : 전표 관리 상세페이지
	@RequestMapping("/content")
	public String content(HttpServletRequest req, Model model) {
		logger.info("url: 강재현 : 전표 관리 상세페이지");

		adservice.content(req, model);

		return "sad/ajax/page";
	}

	
	// 전표 
	@RequestMapping("/approvaladd")
	public String approval(HttpServletRequest req, Model model) {
		logger.info("url: 계정 관리 - 계정 리스트");

		adservice.statementList(req, model);

		return "ad/ajax/approval";
	}

}
