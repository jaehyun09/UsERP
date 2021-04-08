package com.project.UsERP.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface WaService {
	
	// 김은희 - 출퇴근 조회
	public void commuteList(HttpServletRequest req, Model model);
	
	// 김은희 - 근태 조회
	public void waList(HttpServletRequest req, Model model);
	
	// 김은희 - 근태 신청 사원 확인
	public void empComfirm(HttpServletRequest req, Model model);
	
}