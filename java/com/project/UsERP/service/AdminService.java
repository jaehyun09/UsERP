package com.project.UsERP.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface AdminService {
	
	// 조명재 - 사원확인 - 사원번호를 확인한다
	public void confirm(HttpServletRequest req, Model model);
	
	// 조명재 - 사원확인 - 사원확인 전송 클릭
	public void signinPro(HttpServletRequest req, Model model);
	
}
