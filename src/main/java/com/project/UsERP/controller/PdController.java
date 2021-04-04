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

	// 최유성 - 기초 등록
	@RequestMapping("/pdBasicReg")
	public String pdBasicReg(HttpServletRequest req, Model model) {
		logger.info("url: 기초 등록");
		pdService.purBasicReg(req, model);
		return "pd/pdBasicReg";
	}

	// 최유성 - 기초 등록 - 판매 거래처 목록 상세페이지
	@RequestMapping("/pdcomContent")
	public String comContent(HttpServletRequest req, Model model) {
		logger.info("url: 판매 내역 상세페이지");

		// 상세페이지
		pdService.pdcomContent(req, model);

		return "pd/ajax/comPage";
	}

	// 최유성 - 재고 현황
	@RequestMapping("/pdInvenStatus")
	public String pdInvenStatus(HttpServletRequest req, Model model) {
		logger.info("url: 회계 보고서");

		return "pd/pdInvenStatus";
	}

	// 이재홍 - 구매 현황 - 구매 내역 & 승인 내역
	@RequestMapping("/pdStatus")
	public String pdStatus(HttpServletRequest req, Model model) {
		logger.info("url: 구매 내역 & 승인 내역");

		// 구매 내역 & 승인 내역
		pdService.purStatus(req, model);

		// 구매 거래처 목록 & 상품 목록
		pdService.purBasicReg(req, model);

		return "pd/pdStatus";
	}

	// 이재홍 - 구매 현황 - 구매 내역 상세페이지
	@RequestMapping("/pdContent")
	public String pdContent(HttpServletRequest req, Model model) {
		logger.info("url: 구매 내역 상세페이지");

		pdService.pdContent(req, model);

		return "pd/ajax/pdPage";
	}

	// 이재홍 - 구매 현황 - 구매 전표 등록
	@RequestMapping("/pdpdAppInsert")
	public String pdpdAppInsert(HttpServletRequest req, Model model) {
		logger.info("url: 구매 전표 등록");

		pdService.insertBuyStatement(req, model);

		return "pd/pdPro/pdpdaddAc";
	}

	// 최유성 - 입고 현황
	@RequestMapping("/pdRecStatus")
	public String pdRecStatus(HttpServletRequest req, Model model) {
		logger.info("url: 회계 보고서");

		// 입고 내역
		pdService.buyRecStatus(req, model);

		// 입고 전표 등록 - 회계 전표 내역
		pdService.buList(req, model);
		return "pd/pdRecStatus";
	}

// 최유성 - 입고 현황 - 입고 전표 등록 - 승인된 회계 전표 불러오기
	@RequestMapping("/select12")
	public String select(HttpServletRequest req, Model model) {
		logger.info("url: 승인된 회계 전표 불러오기");

		pdService.pdselectList(req, model);

		return "pd/ajax/select";
	}

	// 최유성 - 입고 현황 - 입고 전표 등록
	@RequestMapping("/pdlogsstInsert")
	public String logsstInsert(HttpServletRequest req, Model model) {
		logger.info("url: 입고 전표 등록");

		// 판매내역
		pdService.pdinsertLogsStatement(req, model);

		return "pd/pdPro/pdpdaddAc";
	}
}