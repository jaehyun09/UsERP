package com.project.UsERP.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface HrService {

	// 김은희 - 인사 코드 그룹 조회
	public void hrCodeGroupList(HttpServletRequest req, Model model);

	// 김은희 - 인사 코드 조회
	public void hrCodeList(HttpServletRequest req, Model model);
	
	// 조명재 - 인사 코드 조회 - 직급
	public void hrCodePosList(HttpServletRequest req, Model model);

	// 조명재 - 부서 조회
	public void depList(HttpServletRequest req, Model model);
	
	// 조명재 - 인사 발령(중메뉴) - 인사 발령 조회
	public void appointmentList(HttpServletRequest req, Model model);
	
	// 조명재 - 인사 발령(중메뉴) - 인사 발령
	public void hrAppointmentPro(HttpServletRequest req, Model model);
	
	// 김은희 - 인사카드 조회
	public void hrCardList(HttpServletRequest req, Model model); 
	
	// 김은희 - 인사카드 상세페이지 조회
	public void hrCardDetail(HttpServletRequest req, Model model); 
	
	// 김은희 - 인사카드 등록
	public void hrCardInsert(MultipartHttpServletRequest req, Model model);

}
