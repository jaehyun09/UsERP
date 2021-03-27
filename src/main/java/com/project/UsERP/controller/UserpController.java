package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserpController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserpController.class);
	
	// 메인화면
	@RequestMapping("/")
	public String main(HttpServletRequest req, Model model) {
		logger.info("url: 메인화면");

		return "main";
	}
	@RequestMapping("/main")
	public String main2(HttpServletRequest req, Model model) {
		logger.info("url: 메인화면");

		return "main";
	}
	
	// 로그아웃 
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		logger.info("url: 로그아웃");

		session.invalidate();

		return "logout";
	}
	
	// 회원가입
	@RequestMapping("/signin")
	public String signin(HttpSession session) {
		logger.info("url: 회원가입");

		return "signin";
	}
	
}
