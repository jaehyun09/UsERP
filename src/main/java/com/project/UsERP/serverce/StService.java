package com.project.UsERP.serverce;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;


public interface StService {

	// 최유성 - 기초등록
	public void salesBasicReg(HttpServletRequest req, Model model);

	// 최유성 - 출고현황
	public void salesRecStatus(HttpServletRequest req, Model model);

	// 이재홍 - 판매현황
	public void salesStatus(HttpServletRequest req, Model model);

}
