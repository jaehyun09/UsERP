package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

// 인사 관리
@Controller
public class PersonnelController {
	
	private static final Logger logger = LoggerFactory.getLogger(PersonnelController.class);
	
	// 기초 등록
	@RequestMapping("/personnelBasicReg")
	public String personnelBasicReg(HttpServletRequest req, Model model) {
		logger.info("url: 기초 등록");
		
		return "personnel/personnelBasicReg";
	}
	
	// 인사 발령
	@RequestMapping("/personnelAppointment")
	public String personnelAppointment(HttpServletRequest req, Model model) {
		logger.info("url: 인사 발령");
		
		return "personnel/personnelAppointment";
	}
	
	// 인사 카드
	@RequestMapping("/personnelCard")
	public String personnelCard(HttpServletRequest req, Model model) {
		logger.info("url: 인사 카드");
		
		return "personnel/personnelCard";
	}
  
	// 급여 관리
	@RequestMapping("/personnelSalary")
	public String personnelSalary(HttpServletRequest req, Model model) {
		logger.info("url: 급여 관리");
		
		return "personnel/personnelSalary";
	}
	
}