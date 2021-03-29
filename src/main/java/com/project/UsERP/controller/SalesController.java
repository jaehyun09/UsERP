package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.UsERP.serverce.SalesServiceImpl;

// 판매 관리
@Controller
public class SalesController {

	private static final Logger logger = LoggerFactory.getLogger(SalesController.class);

	@Autowired
	SalesServiceImpl salesService;

	// 최유성 - 기초 등록
	@RequestMapping("/salesBasicReg")
	public String salesBasicReg(HttpServletRequest req, Model model) {
		logger.info("url: 기초 등록 ");

		salesService.salesBasicReg(req, model);

		return "sales/salesBasicReg";
	}

	// 최유성 - 재고 현황
	@RequestMapping("/salesInvenStatus")
	public String salesInvenStatus(HttpServletRequest req, Model model) {
		logger.info("url: 재고 현황");

		return "sales/salesInvenStatus";
	}

	// 이재홍 - 판매 현황 
	@RequestMapping("/salesStatus")
	public String salesStatus(HttpServletRequest req, Model model) {
		logger.info("url: 판매 현황");

		salesService.salesStatus(req, model);

		return "sales/salesStatus";
	}

	// 최유성 - 출고 현황
	@RequestMapping("/salesRelStatus")
	public String salesRelStatus(HttpServletRequest req, Model model) {
		logger.info("url: 출고 현황");

		return "sales/salesRelStatus";
	}

}
