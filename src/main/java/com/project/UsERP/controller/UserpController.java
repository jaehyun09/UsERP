package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;

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
			logger.info("url ==> 인사관리");

			return "main";
		}
}
