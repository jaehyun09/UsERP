package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.UsERP.service.HrService;

// 인사 관리 
@Controller
public class HrController {

	private static final Logger logger = LoggerFactory.getLogger(HrController.class);

	@Autowired
	HrService hrService;
	
	// 기초 등록
	@RequestMapping("/hrBasicReg")
	public String hrBasicReg(HttpServletRequest req, Model model) {
		logger.info("url: 기초 등록");
		hrService.hrCodeGroupList(req, model);
		hrService.hrCodeList(req, model);
		hrService.depList(req, model);
		return "hr/hrBasicReg";
	}

	// 김은희 - 기초 등록 - 리액트 인사코드 그룹 등록
	@RequestMapping("/hrCodeGroupAdd")
	public String codegroupadd(HttpServletRequest req, Model model) {
		logger.info("url: 리액트 인사코드 그룹 등록");

		return "hr/ajax/hrCodeGroup";
	}

	// 김은희 - 기초 등록 - 리액트 인사코드 등록
	@RequestMapping("/hrCodeAdd")
	public String codeadd(HttpServletRequest req, Model model) {
		logger.info("url: 리액트 인사코드 등록");

		return "hr/ajax/hrCode";
	}

	// 조명재 - 기초 등록 - 리액트 부서 등록
	@RequestMapping("/departmentAdd")
	public String departmentadd(HttpServletRequest req, Model model) {
		logger.info("url: 리액트 부서 등록");

		return "hr/ajax/department";
	}
	
	// 조명재 - 인사 발령(중메뉴) - 인사 발령 조회
	@RequestMapping("/hrAppointment")
	public String hrAppointment(HttpServletRequest req, Model model) {
		logger.info("url: 인사 발령 조회");
		
		hrService.appointmentList(req, model);
		hrService.depList(req, model);
		hrService.hrCodePosList(req, model);

		return "hr/hrAppointment";
	}
	
	// 조명재 - 인사 발령(중메뉴) - 인사 발령
	@RequestMapping("/hrAppointmentPro")
	public String hrAppointmentPro(HttpServletRequest req, Model model) {
		logger.info("url: 인사 발령");
		
		hrService.hrAppointmentPro(req, model);
		
		return "redirect:/hrAppointment";
	}

	// 김은희 - 인사 카드
	@RequestMapping("/hrCard")
	public String hrCard(HttpServletRequest req, Model model) {
		logger.info("url: 인사 카드");
		
		hrService.hrCardList(req, model);
		
		return "hr/hrCard";
	}
	
	// 김은희 - 인사 카드 등록
	@RequestMapping("/hrCardInsert")
	public String hrCardInsert(HttpServletRequest req, Model model) {
		logger.info("url: 인사 카드 등록");
		
		
		return ":redirect/hrCardInsert";
	}

	// 조명재 - 급여
	@RequestMapping("/hrSalary")
	public String hrSalary(HttpServletRequest req, Model model) {
		logger.info("url: 급여");

		return "hr/hrSalary";
	}
}
