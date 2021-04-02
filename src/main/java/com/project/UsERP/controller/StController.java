package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.UsERP.service.LdServiceImpl;
import com.project.UsERP.service.StServiceImpl;

// 판매 관리
@Controller
public class StController {

	private static final Logger logger = LoggerFactory.getLogger(StController.class);

	@Autowired
	StServiceImpl stService;
	
	@Autowired
	LdServiceImpl ldService;

	// 강재현 : 기초 등록 - 판매 거래처 목록 & 상품 목록
	@RequestMapping("/stBasicReg")
	public String stBasicReg(HttpServletRequest req, Model model) {
		logger.info("url: 강재현 : 기초 등록 - 판매 거래처 목록 & 상품 목록");
		stService.salesBasicReg(req, model);
		return "st/stBasicReg";
	}

	// 강재현 : 재고 현황
	@RequestMapping("/stInvenStatus")
	public String stInvenStatus(HttpServletRequest req, Model model) {
		logger.info("url: 강재현 : 재고 현황");

		
		return "st/stInvenStatus";
	}
	// 재고 현황 검색 조회 AJAX
	   @RequestMapping("/logInvenStatus")
	   public String logInvenStatus(HttpServletRequest req, Model model) {
	      logger.info("url: 재고 현황 검색 조회 AJAX");
	       
	      ldService.inventoryStatusList(req, model);
	      
	      return "st/ajax/logInvenStatus";
	   }
	

	// 강재현 : 기초 등록 - 계정 관리 - 리액트 계정 등록
	@RequestMapping("/clientadd")
	public String clientadd(HttpServletRequest req, Model model) {
		logger.info("url: 강재현 : 기초 등록 - 계정 관리 - 리액트 계정 등록");

		return "st/ajax/client";
	}

	// 강재현 : 기초 등록 - 계정 관리 - 리액트 계정 등록
	@RequestMapping("/productadd")
	public String productadd(HttpServletRequest req, Model model) {
		logger.info("url: 강재현 : 기초 등록 - 계정 관리 - 리액트 계정 등록");

		return "st/ajax/product";
	}

	// 이재홍 : 판매 현황 - 판매 내역 & 승인 내역
	@RequestMapping("/stStatus")
	public String stStatus(HttpServletRequest req, Model model) {
		logger.info("url: 이재홍 : 판매 현황 - 판매 내역 & 승인 내역");

		// 판매내역
		stService.salesStatus(req, model);
		
		// 판매 거래처 목록 & 상품 목록
		stService.salesBasicReg(req, model);

		return "st/stStatus";
	}

	// 강재현 : 출고 현황 - 출고 내역
	@RequestMapping("/stRelStatus")
	public String stRelStatus(HttpServletRequest req, Model model) {
		logger.info("url: 강재현 : 출고 현황 - 출고 내역");

		stService.salesRecStatus(req, model);

		return "st/stRelStatus";
	}
}
