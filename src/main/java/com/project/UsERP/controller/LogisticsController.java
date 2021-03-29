package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.UsERP.serverce.LogisticsService;

// 물류 관리
@Controller
public class LogisticsController {

	private static final Logger logger = LoggerFactory.getLogger(LogisticsController.class);
	
	@Autowired
	LogisticsService service;
	
	// 기초 코드
	@RequestMapping("/logBasicReg")
	public String logBasicReg(HttpServletRequest req, Model model) {
		logger.info("url: 기초 코드");
		
		return "logistics/logBasicReg";
	}
	
	// 리액트 창고 등록
	@RequestMapping("/warehouseadd")
	public String codeadd(HttpServletRequest req, Model model) {
		logger.info("url: 리액트 창고 등록");

		return "logistics/warehouse";
	}
	  
	// 전표 관리
	@RequestMapping("/logStatementList")
	public String logStatementList(HttpServletRequest req, Model model) {
		logger.info("url: 전표 관리");
		
		service.logStatementList(req, model);
		  
		return "logistics/logStatementList";
	}
	  
	// 재고 현황
	@RequestMapping("/logInvenStatus")
	public String logInvenStatus(HttpServletRequest req, Model model) {
		logger.info("url: 재고 현황");
		 
		return "logistics/logInvenStatus";
	}
	  
	// 재고 이동
	@RequestMapping("/logMoveWarehouse")
	public String logMoveWarehouse(HttpServletRequest req, Model model) {
		logger.info("url: 재고 이동");
		  
		return "logistics/logMoveWarehouse";
	}
	  
	// 재고 조정
	@RequestMapping("/logInvenAdjustment")
	public String logInvenAdjustment(HttpServletRequest req, Model model) {
		logger.info("url: 재고 조정");
		  
		return "logistics/logInvenAdjustment";
	}
	  
	// 재고 수불부
	@RequestMapping("/logInvenSupply")
	public String logInvenSupply(HttpServletRequest req, Model model) {
		logger.info("url: 재고 수불부");
		 
		return "logistics/logInvenSupply";
	}
	        
	// 창고 현황
	@RequestMapping("/logWarehouseList")
	public String logWarehouseList(HttpServletRequest req, Model model) {
		logger.info("url: 창고 현황");
		 
		service.warehouseList(req, model);
		
		return "logistics/logWarehouseList";
	}
	
	// 창고 등록
	@RequestMapping("/insertWareAction")
	public String insertWareAction(HttpServletRequest req, Model model) {
		logger.info("url: 창고 등록");
		
		service.insertWarehouse(req, model);
		
		return "logistics/ajax/insertWareAction";
	}

}