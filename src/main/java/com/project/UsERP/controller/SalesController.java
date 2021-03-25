package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

//출고 관리
@Controller
public class SalesController {
private static final Logger logger = LoggerFactory.getLogger(SalesController.class);
	
	// 거래처 
	@RequestMapping("/client")
	public String client(HttpServletRequest req, Model model) {
		logger.info("url ==> 거래처");
	
		return "sales/client";
	}
	
	// 상품
	@RequestMapping("/salesproduct")
	public String salesproduct(HttpServletRequest req, Model model) {
		logger.info("url ==> 상품");
		
		return "sales/salesproduct";
	}
	
	// 재고 현황
	@RequestMapping("/salesInvenStatus")
	public String salesInvenStatus(HttpServletRequest req, Model model) {
		logger.info("url ==> 매입관리 > 재고 현황");
		
		return "sales/salesInvenStatus";
	}
	
	// 판매 현황
	@RequestMapping("/salesStatus")
	public String salesStatus(HttpServletRequest req, Model model) {
		logger.info("url ==> 판매현황");
		
		return "sales/salesStatus";
	}
	
	// 출고 현황
	@RequestMapping("/releaseStatus")
	public String releaseStatus(HttpServletRequest req, Model model) {
		logger.info("url ==> 출고현황");
		
		return "sales/releaseStatus";
	}
	
	
}
