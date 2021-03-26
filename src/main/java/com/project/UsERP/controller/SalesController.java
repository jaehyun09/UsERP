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
	
	// 기초등록 
	@RequestMapping("/client3")
	public String client(HttpServletRequest req, Model model) {
		logger.info("url ==> 기초등록");
	
		return "sales/client3";
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
	
	//테스트
	@RequestMapping("/test33")
	public String test33(HttpServletRequest req, Model model) {
		logger.info("url ==> 테스트");
		
		return "sales/test";
	}
	
}
