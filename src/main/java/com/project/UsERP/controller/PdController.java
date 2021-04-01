package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.UsERP.service.PdServiceImpl;

// 구매 관리
@Controller
public class PdController {

	private static final Logger logger = LoggerFactory.getLogger(PdController.class);

	@Autowired
	PdServiceImpl pdService;
	
	// 기초 등록
	@RequestMapping("/pdBasicReg")
	public String pdBasicReg(HttpServletRequest req, Model model) {
		logger.info("url: 기초 등록");
		pdService.purBasicReg(req, model);
		return "pd/pdBasicReg";
	}

	// 재고 현황
	@RequestMapping("/pdInvenStatus")
	public String pdInvenStatus(HttpServletRequest req, Model model) {
		logger.info("url: 회계 보고서");

		return "pd/pdInvenStatus";
	}

	// 구매 현황
	@RequestMapping("/pdStatus")
	public String pdStatus(HttpServletRequest req, Model model) {
		logger.info("url: 회계 보고서");

		return "pd/pdStatus";
	}

	// 입고 현황
	@RequestMapping("/pdRecStatus")
	public String pdRecStatus(HttpServletRequest req, Model model) {
		logger.info("url: 회계 보고서");

		return "pd/pdRecStatus";
	}
	
}
