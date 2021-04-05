package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.UsERP.serverce.StServiceImpl;

// 판매 관리
@Controller
public class StController {

	private static final Logger logger = LoggerFactory.getLogger(StController.class);

	@Autowired
	StServiceImpl stService;
	
	// 기초 등록
	@RequestMapping("/stBasicReg")
	public String stBasicReg(HttpServletRequest req, Model model) {
		logger.info("url: 기초 등록");
		stService.salesBasicReg(req, model);
		return "st/stBasicReg";
	}

	// 재고 현황
	@RequestMapping("/stInvenStatus")
	public String stInvenStatus(HttpServletRequest req, Model model) {
		logger.info("url: 회계 보고서");

		return "st/stInvenStatus";
	}
	
	// 김민수 - 재고 현황 검색 조회 AJAX
	@RequestMapping("/stInvenStatusList")
	public String stInvenStatusList(HttpServletRequest req, Model model) {
		logger.info("url: 재고 현황 검색 조회 AJAX");
			 
		stService.inventoryStatusList(req, model);
			
		return "st/ajax/stInvenStatusList";
	}
	
	// 판매 현황
	@RequestMapping("/stStatus")
	public String stStatus(HttpServletRequest req, Model model) {
		logger.info("url: 회계 보고서");

		stService.salesStatus(req, model);
		
		return "st/stStatus";
	}

	// 출고 현황
	@RequestMapping("/stRelStatus")
	public String stRelStatus(HttpServletRequest req, Model model) {
		logger.info("url: 회계 보고서");

		return "st/stRelStatus";
	}
}
