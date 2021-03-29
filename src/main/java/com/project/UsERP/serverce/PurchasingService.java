package com.project.UsERP.serverce;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

//최유성
public interface PurchasingService {
	
	// 최유성 - 기초등록
	public void purBasicReg(HttpServletRequest req, Model model);
	
	// 최유성 - 입고현황
	public void purRecStatus(HttpServletRequest req, Model model);
	
	// 이재홍 - 구매현황
    public void purStatus(HttpServletRequest req, Model model);

}
