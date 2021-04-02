package com.project.UsERP.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface StService {

	// 강재현 : 기초등록 - 판매 거래처 목록 & 상품 목록
	public void salesBasicReg(HttpServletRequest req, Model model);

	// 강재현 : 재고현황

	// 이재홍 : 판매 현황 - 판매 내역 & 승인 내역
	public void salesStatus(HttpServletRequest req, Model model);

	// 이재홍 : 판매 전표 등록
	public void insertSalesStatement(HttpServletRequest req, Model model);

	// 강재현 : 출고현황 - 출고 내역
	public void salesRecStatus(HttpServletRequest req, Model model);

	// 강재현 : 출고현황 - 출고 전표 등록
	public void proComfirm(HttpServletRequest req, Model model);
}
