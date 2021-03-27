package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

// 판매 관리
@Controller
public class SalesController {
	
	private static final Logger logger = LoggerFactory.getLogger(SalesController.class);
	
	// 기초 등록 
	@RequestMapping("/salesBasicReg")
	public String salesBasicReg(HttpServletRequest req, Model model) {
		logger.info("url: 기초 등록 ");
		
		return "sales/salesBasicReg";
	}
	
	// 리액트 거래처 등록 
	@RequestMapping("/clientadd")
	public String clientadd(HttpServletRequest req, Model model) {
		logger.info("url: 리액트 거래처 관리");
			
		return "sales/client";
	}
	
	// 리액트 상품 등록 
	@RequestMapping("/productadd")
	public String accountadd(HttpServletRequest req, Model model) {
		logger.info("url: 리액트 상품 관리");
			
		return "sales/product";
	}
			
	
	// 재고 현황
	@RequestMapping("/salesInvenStatus")
	public String salesInvenStatus(HttpServletRequest req, Model model) {
		logger.info("url: 재고 현황");
		
		return "sales/salesInvenStatus";
	}
	
	// 판매 현황
	@RequestMapping("/salesStatus")
	public String salesStatus(HttpServletRequest req, Model model) {
		logger.info("url: 판매 현황");
		
		return "sales/salesStatus";
	}
	
	// 출고 현황
	@RequestMapping("/salesRelStatus")
	public String salesRelStatus(HttpServletRequest req, Model model) {
		logger.info("url: 출고 현황");
		
		return "sales/salesRelStatus";
	}
	
}
