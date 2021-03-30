package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

// 근태 관리
@Controller
public class WaController {

	private static final Logger logger = LoggerFactory.getLogger(WaController.class);

	// 조회
	@RequestMapping("/waSelect")
	public String waSelect(HttpServletRequest req, Model model) {
		logger.info("url: 기초 등록");

		return "wa/waSelect";
	}

	// 신청
	@RequestMapping("/waApplication")
	public String waApplication(HttpServletRequest req, Model model) {
		logger.info("url: 회계 보고서");

		return "wa/waApplication";
	}
}
