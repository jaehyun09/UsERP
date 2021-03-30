package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.UsERP.serverce.LogisticsServiceImpl;

// 물류 관리
@Controller
public class LogisticsController {

	private static final Logger logger = LoggerFactory.getLogger(LogisticsController.class);
	  
	@Autowired
	LogisticsServiceImpl service;
	
	// 기초 코드
	@RequestMapping("/ldBasicReg")
	public String logBasicReg(HttpServletRequest req, Model model) {
		logger.info("url: 기초 코드");
		
		//service.companyList(req, model);
		//service.productList(req, model);
		service.warehouseList(req, model);
		
		return "ld/ldBasicReg";
	}
	
	// 검색 거래처 조회
	@RequestMapping("/compSearchList")
	public String compSearchList(HttpServletRequest req, Model model) {
		logger.info("url : 검색 거래처 조회 ");
		
		service.companyList(req, model);
		
		return "ld/ajax/compSearchList";
	}
	
	// 검색 상품 조회
	@RequestMapping("/proSearchList")
	public String proSearchList(HttpServletRequest req, Model model) {
		logger.info("url : 검색 상품 조회 ");
		
		service.productList(req, model);
		
		return "ld/ajax/proSearchList";
	}
	
	// 리액트 창고 등록
	@RequestMapping("/warehouseadd")
	public String codeadd(HttpServletRequest req, Model model) {
		logger.info("url: 리액트 창고 등록");

		return "ld/warehouse";
	}
	  
	// 전표 관리
	@RequestMapping("/ldStatementManagement")
	public String logStatementList(HttpServletRequest req, Model model) {
		logger.info("url: 전표 관리");
		  
		return "ld/ldStatementManagement";
	}
	
	// 재고 관리
	@RequestMapping("/ldInventoryControl")
	public String logsInventoryControl(HttpServletRequest req, Model model) {
		logger.info("url: 재고 관리");
		  
		return "ld/ldInventoryControl";
	}
	  
	// 재고 현황 AJAX
	@RequestMapping("/logInvenStatus")
	public String logInvenStatus(HttpServletRequest req, Model model) {
		logger.info("url: 재고 현황");
		 
		return "ld/ajax/logInvenStatus";
	}
	  
	// 재고 이동 AJAX
	@RequestMapping("/logMoveWareInsert")
	public String logMoveWareInsert(HttpServletRequest req, Model model) {
		logger.info("url: 재고 이동");
		  
		return "ld/ajax/logMoveWareInsert";
	}
	  
	// 재고 조정 AJAX
	@RequestMapping("/logInvenAdjustment")
	public String logInvenAdjustment(HttpServletRequest req, Model model) {
		logger.info("url: 재고 조정");
		  
		return "ld/ajax/logInvenAdjustment";
	}
	  
	// 재고 수불부 AJAX
	@RequestMapping("/logInvenSupply")
	public String logInvenSupply(HttpServletRequest req, Model model) {
		logger.info("url: 재고 수불부");
		 
		return "ld/ajax/logInvenSupply";
	}
//	        
//	// 창고 현황
//	@RequestMapping("/logWarehouseList")
//	public String logWarehouseList(HttpServletRequest req, Model model) {
//		logger.info("url: 창고 현황");
//		 
//		service.warehouseList(req, model);
//		
//		return "logistics/logWarehouseList";
//	}
//	
//	// 창고 등록
//	@RequestMapping("/insertWareAction")
//	public String insertWareAction(HttpServletRequest req, Model model) {
//		logger.info("url: 창고 등록");
//		
//		service.insertWarehouse(req, model);
//		
//		return "logistics/logPro/insertWareAction";
//	}

}