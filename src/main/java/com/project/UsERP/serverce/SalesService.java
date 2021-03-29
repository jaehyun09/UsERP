package com.project.UsERP.serverce;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

//최유성
public interface SalesService {
	
	//기초등록
	public void salesBasicReg(HttpServletRequest req, Model model);
	
	//출고현황
	public void salesRecStatus(HttpServletRequest req, Model model);
	
	//판매현황
   public void salesStatus(HttpServletRequest req, Model model);
	
	
	
	
}
