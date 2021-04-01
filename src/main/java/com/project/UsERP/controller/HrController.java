package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.UsERP.service.HrServiceImpl;

// 인사 관리 
@Controller
public class HrController {

	private static final Logger logger = LoggerFactory.getLogger(HrController.class);

	@Autowired
	HrServiceImpl hrservice;
	
	// 기초 등록
	@RequestMapping("/hrBasicReg")
	public String hrBasicReg(HttpServletRequest req, Model model) {
		logger.info("url: 기초 등록");
		hrservice.hrCgList(req, model);
		hrservice.hrCList(req, model);
		hrservice.depList(req, model);
		return "hr/hrBasicReg";
	}

	// 김은희 - 기초 등록 - 리액트 인사 코드그룹 등록
	@RequestMapping("/codegroupadd")
	public String codegroupadd(HttpServletRequest req, Model model) {
		logger.info("url: 리액트 인사 코드그룹 등록");

		return "hr/ajax/codegroup";
	}

	// 김은희 - 기초 등록 - 리액트 인사코드 등록
	@RequestMapping("/codeadd")
	public String codeadd(HttpServletRequest req, Model model) {
		logger.info("url: 리액트 인사코드 등록");

		return "hr/ajax/code";
	}

	// 조명재 - 기초 등록 - 리액트 부서 등록
	@RequestMapping("/departmentadd")
	public String departmentadd(HttpServletRequest req, Model model) {
		logger.info("url: 리액트 부서 등록");

		return "hr/ajax/department";
	}

	// 인사 발령
	@RequestMapping("/hrAppointment")
	public String hrAppointment(HttpServletRequest req, Model model) {
		logger.info("url: 회계 보고서");

		return "hr/hrAppointment";
	}

	// 인사 카드
	@RequestMapping("/hrCard")
	public String hrCard(HttpServletRequest req, Model model) {
		logger.info("url: 회계 보고서");

		return "hr/hrCard";
	}

	// 급여
	@RequestMapping("/hrSalary")
	public String hrSalary(HttpServletRequest req, Model model) {
		logger.info("url: 회계 보고서");

		return "hr/hrSalary";
	}
}
