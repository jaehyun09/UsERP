package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.UsERP.serverce.AccountServiceImpl;

// 회계 관리
@Controller
public class AccountController {

	private static final Logger logger = LoggerFactory.getLogger(AccountController.class);

	@Autowired
	AccountServiceImpl accountservice;
	
	// 회계 보고서
	@RequestMapping("/accReport")
	public String accReport(HttpServletRequest req, Model model) {
		logger.info("url: 회계 보고서");
		
		return "accounting/accReport";
	}

	// 계좌 관리
	@RequestMapping("/accBankManagement")
	public String accBankManagement(HttpServletRequest req, Model model) {
		logger.info("url: 계좌 관리");
		
		accountservice.bankList(req, model);
		
		return "accounting/accBankManagement";
	}
	
	// 리액트 계좌 등록 
	@RequestMapping("/bankadd")
	public String bankadd(HttpServletRequest req, Model model) {
		logger.info("url: 리액트 계좌 등록");
		
		return "accounting/ajax/bank";
	}
	
	// 계정 관리
	@RequestMapping("/accManagement")
	public String accManagement(HttpServletRequest req, Model model) {
		logger.info("url: 계정 관리");
		
		
		return "accounting/accManagement";
	}
	
	// 계정 관리 - 계정 리스트  
	@RequestMapping("/accountlist")
		public String accountlist(HttpServletRequest req, Model model) {
		logger.info("url: 계정 관리 - 계정 리스트");
			
		accountservice.accountList(req, model);
		
		return "accounting/ajax/accountList";
	}

	// 리액트 계정 등록 
	@RequestMapping("/accountadd")
	public String accountadd(HttpServletRequest req, Model model) {
		logger.info("url: 리액트 계정 등록");
			
		return "accounting/ajax/account";
	}
	
	// 전표 관리
	@RequestMapping("/accStatementManagement")
	public String accStatementManagement(HttpServletRequest req, Model model) {
		logger.info("url: 전표 관리");
		
		accountservice.statementList(req, model);
		accountservice.salarystatementList(req, model);
		
		return "accounting/accStatementManagement";
	}
	
	// 채권채무 현황
	@RequestMapping("/accBonddebtManagement")
	public String accBonddebtManagement(HttpServletRequest req, Model model) {
		logger.info("url: 채권채무 현황");
		
		return "accounting/accBonddebtManagement";
	}
	
}
