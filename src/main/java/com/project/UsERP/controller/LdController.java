package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

// 물류 관리
@Controller
public class LdController {

	private static final Logger logger = LoggerFactory.getLogger(LdController.class);

	// 기초 등록
	@RequestMapping("/ldBasicReg")
	public String ldBasicReg(HttpServletRequest req, Model model) {
		logger.info("url: 기초 등록");

		return "ld/ldBasicReg";
	}
	
	// 김민수 - 창고 관리 - 리액트 창고 등록
	@RequestMapping("/warehouseadd")
	public String codeadd(HttpServletRequest req, Model model) {
		logger.info("url: 리액트 창고 등록");

		return "ld/ajax/warehouse";
	}

	// 전표 관리
	@RequestMapping("/ldStatementManagement")
	public String ldStatementManagement(HttpServletRequest req, Model model) {
		logger.info("url: 회계 보고서");

		return "ld/ldStatementManagement";
	}

	// 재고 관리
	@RequestMapping("/ldInventoryControl")
	public String ldInventoryControl(HttpServletRequest req, Model model) {
		logger.info("url: 회계 보고서");

		return "ld/ldInventoryControl";
	}
}
