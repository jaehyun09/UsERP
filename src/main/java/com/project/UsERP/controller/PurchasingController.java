package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

// 매입 관리
@Controller
public class PurchasingController {
private static final Logger logger = LoggerFactory.getLogger(PurchasingController.class);
	
	// 기초등록 
	@RequestMapping("/client2")
	public String client2(HttpServletRequest req, Model model) {
		logger.info("url ==> 기초등록");
	
		return "purchasing/client2";
	}

	// 재고 현황
	@RequestMapping("/purInvenStatus")
	public String purInvenStatus(HttpServletRequest req, Model model) {
		logger.info("url ==> 매입관리 > 재고 현황");
		
		return "purchasing/purInvenStatus";
	}
	
	// 구매 현황
	@RequestMapping("/purStatus")
	public String purStatus(HttpServletRequest req, Model model) {
		logger.info("url ==> 구매 현황");
		
		return "purchasing/purStatus";
	}
	
	// 입고 현황
	@RequestMapping("/receiveStatus")
	public String receiveStatus(HttpServletRequest req, Model model) {
		logger.info("url ==> 입고 현황");
		
		return "purchasing/receiveStatus";
	}
}
