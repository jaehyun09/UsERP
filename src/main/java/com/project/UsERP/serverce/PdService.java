package com.project.UsERP.serverce;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface PdService {

	// 최유성 - 기초등록
	public void pdBasicReg(HttpServletRequest req, Model model);

	// 최유성 - 입고현황
	public void pdRecStatus(HttpServletRequest req, Model model);

	// 이재홍 - 구매현황
	public void purStatus(HttpServletRequest req, Model model);
	
	// 최유성 - 입고 내역 상세 페이지
	public void pdRecStatusAjax(HttpServletRequest req, Model model);
	
	// 최유성 - 입고 전표 등록
	public void pdRecStatusAjax2(HttpServletRequest req, Model model);

	// 김민수 - 재고 현황(검색포함)
	public void inventoryStatusList(HttpServletRequest req, Model model);
}
