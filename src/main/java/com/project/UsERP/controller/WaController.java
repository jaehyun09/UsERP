package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.UsERP.service.HrService;
import com.project.UsERP.service.WaService;

// 근태 관리
@Controller
public class WaController {

	private static final Logger logger = LoggerFactory.getLogger(WaController.class);
	
	@Autowired
	WaService waService;
 
	@Autowired
	HrService hrService;

	// 김은희 - 근태 조회
	@RequestMapping("/waSelect")
	public String waSelect(HttpServletRequest req, Model model) {
		logger.info("url: 근태 조회");
	
		waService.commuteList(req, model);
		waService.waList(req, model);
		
		return "wa/waSelect";
	}
	
	// 김은희 - 근태 신청 페이지
	@RequestMapping("/waApplication")
	public String waApplication(HttpServletRequest req, Model model) {
		logger.info("url: 근태 신청 페이지");
	
		hrService.depList(req, model);
		
		return "wa/waApplication";
	}
	
	// 김은희 - 근태 신청 사원 확인
	@RequestMapping("/empComfirm")
	public String empComfirm(HttpServletRequest req, Model model) {
		logger.info("url: 근태 신청 사원 확인");
	
		waService.empComfirm(req, model);
		
		return "wa/empComfirm";
	}
	
	// 김은희 - 근태 신청 
	@RequestMapping("/waAppInsert")
	public String waAppInsert(HttpServletRequest req, Model model) {
		logger.info("url: 근태 신청");
	
		return "wa/waApplication";
	}
	
}
