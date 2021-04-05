package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.UsERP.serverce.PdServiceImpl;

// 구매 관리
@Controller
public class PdController {

	private static final Logger logger = LoggerFactory.getLogger(PdController.class);

	@Autowired
	PdServiceImpl pdService;
	
	// 최유성 - 기초 등록
	@RequestMapping("/pdBasicReg")
	public String pdBasicReg(HttpServletRequest req, Model model) {
		logger.info("url: 기초 등록");

		pdService.pdBasicReg(req, model);
		
		return "pd/pdBasicReg";
	}

	// 재고 현황
	@RequestMapping("/pdInvenStatus")
	public String pdInvenStatus(HttpServletRequest req, Model model) {
		logger.info("url: 재고 현황");

		return "pd/pdInvenStatus";
	}
	
	// 김민수 - 재고 현황 검색 조회 AJAX
	@RequestMapping("/pdInvenStatusList")
	public String pdInvenStatusList(HttpServletRequest req, Model model) {
		logger.info("url: 재고 현황 검색 조회 AJAX");
		 
		pdService.inventoryStatusList(req, model);
		
		return "pd/ajax/pdInvenStatusList";
	}

	// 구매 현황
	@RequestMapping("/pdStatus")
	public String pdStatus(HttpServletRequest req, Model model) {
		logger.info("url: 회계 보고서");

		return "pd/pdStatus";
	}

	// 최유성 - 입고 현황
	@RequestMapping("/pdRecStatus")
	public String pdRecStatus(HttpServletRequest req, Model model) {
		logger.info("url: 입고 현황");
		
		pdService.pdRecStatus(req, model);

		return "pd/pdRecStatus";
	}
	
	// 최유성 - 입고 내역 상세 페이지
	@RequestMapping("/pdRecStatusAjax")
	public String pdRecStatusAjax(HttpServletRequest req, Model model) {
		logger.info("url: 입고 내역 상세 페이지");
		
		pdService.pdRecStatusAjax(req, model);
		
		return "pd/ajax/pdRecStatusAjax";
	}
	
	// 최유성 - 입고 전표 등록
	@RequestMapping("/pdRecStatusAjax2")
	public String pdRecStatusAjax2(HttpServletRequest req, Model model) {
		logger.info("url: 입고 내역 상세 페이지");
		
		pdService.pdRecStatusAjax2(req, model);
		
		logger.info("url: 이거타냐....?");

		return "pd/ajax/pdRecStatusAjax2";
	}
	
}
