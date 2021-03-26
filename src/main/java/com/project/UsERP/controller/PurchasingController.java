package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

// 구매 관리
@Controller
public class PurchasingController {
	
	private static final Logger logger = LoggerFactory.getLogger(PurchasingController.class);
	
	// 기초 등록
	@RequestMapping("/purBasicReg")
	public String purBasicReg(HttpServletRequest req, Model model) {
		logger.info("url: 기초 등록");
	
		return "purchasing/purBasicReg";
	}

	// 재고 현황
	@RequestMapping("/purInvenStatus")
	public String purInvenStatus(HttpServletRequest req, Model model) {
		logger.info("url: 재고 현황");
		
		return "purchasing/purInvenStatus";
	}
	
	// 구매 현황
	@RequestMapping("/purStatus")
	public String purStatus(HttpServletRequest req, Model model) {
		logger.info("url: 구매 현황");
		
		return "purchasing/purStatus";
	}
	
	// 입고 현황
	@RequestMapping("/purRecStatus")
	public String purRecStatus(HttpServletRequest req, Model model) {
		logger.info("url: 입고 현황");
		
		return "purchasing/purRecStatus";
	}
}
