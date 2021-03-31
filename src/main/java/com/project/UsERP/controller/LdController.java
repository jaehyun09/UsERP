package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.UsERP.serverce.LdServiceImpl;

// 물류 관리
@Controller
public class LdController {

	private static final Logger logger = LoggerFactory.getLogger(LdController.class);

	@Autowired
	LdServiceImpl ldservice;
	
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
		logger.info("url: 전표 관리");

		return "ld/ldStatementManagement";
	}

	// 재고 관리
	@RequestMapping("/ldInventoryControl")
	public String ldInventoryControl(HttpServletRequest req, Model model) {
		logger.info("url: 재고 관리");

		return "ld/ldInventoryControl";
	}
	
	// 재고 현황 AJAX
	@RequestMapping("/logInvenStatus")
	public String logInvenStatus(HttpServletRequest req, Model model) {
		logger.info("url: 재고 현황AJAX");
		 
		return "ld/ajax/logInvenStatus";
	}
	  
	// 재고 이동 AJAX
	@RequestMapping("/logMoveWareInsert")
	public String logMoveWareInsert(HttpServletRequest req, Model model) {
		logger.info("url: 재고 이동AJAX");
		  
		return "ld/ajax/logMoveWareInsert";
	}
	  
	// 재고 조정 AJAX
	@RequestMapping("/logInvenAdjustment")
	public String logInvenAdjustment(HttpServletRequest req, Model model) {
		logger.info("url: 재고 조정AJAX");
		  
		return "ld/ajax/logInvenAdjustment";
	}
	  
	// 재고 수불부 AJAX
	@RequestMapping("/logInvenSupply")
	public String logInvenSupply(HttpServletRequest req, Model model) {
		logger.info("url: 재고 수불부AJAX");
		 
		return "ld/ajax/logInvenSupply";
	}
	
}
