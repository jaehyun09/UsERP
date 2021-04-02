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
	
	// 김민수 - 기초 등록
	@RequestMapping("/ldBasicReg")
	public String ldBasicReg(HttpServletRequest req, Model model) {
		logger.info("url: 기초 등록");
		
		return "ld/ldBasicReg";
	}
	
	// 김민수 - 검색 거래처 조회 
	@RequestMapping("/compSearchList")
	public String compSearchList(HttpServletRequest req, Model model) {
		logger.info("url : 검색 거래처 조회 ");
		
		ldservice.companyList(req, model);
		
		return "ld/ajax/compSearchList";
	}
	
	// 김민수 - 검색 상품 조회
	@RequestMapping("/proSearchList")
	public String proSearchList(HttpServletRequest req, Model model) {
		logger.info("url : 검색 상품 조회 ");
		
		ldservice.productList(req, model);
		
		return "ld/ajax/proSearchList";
	}
	
	 // 김민수 - 창고 목록 AJAX
	@RequestMapping("/logWarehouseList")
	public String logWarehouseList(HttpServletRequest req, Model model) {
		logger.info("url: 창고 목록 AJAX");
		 
		ldservice.warehouseList(req, model);
		
		return "ld/ajax/logWarehouseList";
	}
	
	// 김민수 - 창고 목록 상세페이지 AJAX
	@RequestMapping("/logWarehouseDetail")
	public String logWarehouseDetail(HttpServletRequest req, Model model) {
		logger.info("url: 창고 목록 상세페이지 AJAX");
		 
		ldservice.warehouseDetail(req, model);
		
		return "ld/ajax/logWarehouseDetail";
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

	// 김민수 - 재고 관리
	@RequestMapping("/ldInventoryControl")
	public String ldInventoryControl(HttpServletRequest req, Model model) {
		logger.info("url: 재고 관리");
		
		return "ld/ldInventoryControl";
	}
	
	// 김민수 - 재고 현황 검색 조회 AJAX
	@RequestMapping("/logInvenStatus")
	public String logInvenStatus(HttpServletRequest req, Model model) {
		logger.info("url: 재고 현황 검색 조회 AJAX");
		 
		ldservice.inventoryStatusList(req, model);
		
		return "ld/ajax/logInvenStatus";
	}
	  
	// 김민수 - 재고 이동 AJAX
	@RequestMapping("/logMoveWareInsert")
	public String logMoveWareInsert(HttpServletRequest req, Model model) {
		logger.info("url: 재고 이동AJAX");
		
		ldservice.selectWarehouse(req, model);
		ldservice.selectProduct(req, model);
		ldservice.moveWarehouseList(req, model);
		
		return "ld/ajax/logMoveWareInsert";
	}
	
	// 김민수 - 재고 이동 등록
	@RequestMapping("/moveStsuInsert")
	public String moveStsuInsert(HttpServletRequest req, Model model) {
		logger.info("url: 재고 이동 등록");
		
		ldservice.moveWareInsert(req, model);
		
		return "ld/ldPro/moveStsuInsert";
	}
	  
	// 김민수 - 재고 조정 AJAX
	@RequestMapping("/logInvenAdjustment")
	public String logInvenAdjustment(HttpServletRequest req, Model model) {
		logger.info("url: 재고 조정AJAX");
		
		ldservice.selectWarehouse(req, model);
		ldservice.selectProduct(req, model);
		
		return "ld/ajax/logInvenAdjustment";
	}
	  
	// 김민수 - 재고 수불부 AJAX
	@RequestMapping("/logInvenSupply")
	public String logInvenSupply(HttpServletRequest req, Model model) {
		logger.info("url: 재고 수불부AJAX");
		 
		return "ld/ajax/logInvenSupply";
	}
	
}
