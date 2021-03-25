package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

// 회계관리
@Controller
public class AccountController {

	private static final Logger logger = LoggerFactory.getLogger(AccountController.class);

	// 메인화면
	@RequestMapping("/main.do")
	public String main2(HttpServletRequest req, Model model) {
		logger.info("url ==> 인사관리");

		return "main";
	}

	// 회계보고서
	@RequestMapping("/accountingreport")
	public String Accountingreport(HttpServletRequest req, Model model) {
		logger.info("url ==> 회계보고서");

		return "accounting/accountingreport";
	}

	// 계좌 관리
	@RequestMapping("/bankManagement")
	public String BankManagement(HttpServletRequest req, Model model) {
		logger.info("url ==> 계좌 관리");

		return "accounting/bankManagement";
	}

	// 계정 관리
	@RequestMapping("/accountManagement")
	public String AccountManagement(HttpServletRequest req, Model model) {
		logger.info("url ==> 계정 관리");

		return "accounting/accountManagement";
	}

	// 전표 관리
	@RequestMapping("/statementManagement")
	public String StatementManagement(HttpServletRequest req, Model model) {
		logger.info("url ==> 전표 관리");

		return "accounting/statementManagement";
	}

	// 채권/채무 관리 bonddebtManagement
	@RequestMapping("/bonddebtManagement")
	public String BonddebtManagement(HttpServletRequest req, Model model) {
		logger.info("url ==> 채권/채무 관리");

		return "accounting/bonddebtManagement";
	}
}
