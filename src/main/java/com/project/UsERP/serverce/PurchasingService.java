package com.project.UsERP.serverce;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

//최유성
public interface PurchasingService {
	
	//기초등록
	public void purBasicReg(HttpServletRequest req, Model model);
	
	//입고현황
	public void purRecStatus(HttpServletRequest req, Model model);
	
	//구매현황 ㅈㅎ
    public void purStatus(HttpServletRequest req, Model model);

}
