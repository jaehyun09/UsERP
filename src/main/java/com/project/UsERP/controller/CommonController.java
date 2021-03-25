package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {
	
	private static final Logger logger = LoggerFactory.getLogger(SalesController.class);

	// 광회, 첫 화면
	@RequestMapping("/index")
	public String index(HttpServletRequest req, Model model) {
		logger.info("url ==> 입장");
	
		return "common/index";
	}
	
	// 광회, 로그인
	@RequestMapping("/login")
	public String login(HttpServletRequest req, Model model) {
		logger.info("url ==> 로그인");
	
		return "sales/client";	// 시큐리티 적용 전에 테스트를 위해 첫 로그인 지점을 여기로 정함
	}
		
	// 광회, 직원 가등록 요청
	@RequestMapping("/joinEmployee")
	public String client(HttpServletRequest req, Model model) {
		logger.info("url ==> 직원 가등록 요청");
	
		return "common/joinEmployee";
	}
}
