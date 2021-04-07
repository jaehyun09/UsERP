package com.project.UsERP.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface PdService {

//	// 최유성 - 기초등록
//	public void purBasicReg(HttpServletRequest req, Model model);
//
//	// 강재현 - 기초등록 - 판매 거래처 목록 상세페이지
//	public void pdcomContent(HttpServletRequest req, Model model);
//
//	// 김민수 - 재고 현황(검색포함)
//	public void inventoryStatusList(HttpServletRequest req, Model model);
//	
//	// 최유성 - 입고현황
//	public void purRecStatus(HttpServletRequest req, Model model);
//
//	// 이재홍 - 구매현황 - 구매 내역 & 승인 내역
//	public void purStatus(HttpServletRequest req, Model model);
//
//	// 이재홍 - 구매현황 - 구매 내역 상세페이지
//	public void pdContent(HttpServletRequest req, Model model);
//
//	// 이재홍 - 구매현황 - 구매 전표 등록
//	public void insertBuyStatement(HttpServletRequest req, Model model);
//
//	// 최유성 - 입고 현황 - 입고 내역
//	public void buyRecStatus(HttpServletRequest req, Model model);
//
//	// 최유성 - 입고 현황 - 입고 전표 등록 - 회계 전표 내역
//	public void buList(HttpServletRequest req, Model model);
//
//	// 최유성 - 입고 현황 - 회계 전표 내역 상세
//	public void pdselectList(HttpServletRequest req, Model model);
//
//	// 최유성 - 입고 현황 - 입고 전표 등록
//	public void pdinsertLogsStatement(HttpServletRequest req, Model model);
	
	// 최유성 - 기초등록 - 구매 거래처 목록 상세페이지
		public void pdcomContent(HttpServletRequest req, Model model);

		// 최유성 - 기초등록 - 상품 상세페이지
		public void pdproContent(HttpServletRequest req, Model model);
		
		// 김민수 - 재고 현황(검색포함)
		public void inventoryStatusList(HttpServletRequest req, Model model);
		
		// 이재홍 - 구매현황 - 구매 내역 & 승인 내역
		public void purStatus(HttpServletRequest req, Model model);

		// 이재홍 - 구매현황 - 구매 내역 상세페이지
		public void pdContent(HttpServletRequest req, Model model);

		// 이재홍 - 구매현황 - 구매 전표 등록
		public void insertBuyStatement(HttpServletRequest req, Model model);

		///////////////////////////////////최유성 추가//////////////////
		
		// 최유성 - 기초등록
		public void pdBasicReg(HttpServletRequest req, Model model);

		// 최유성 - 입고현황
		public void pdRecStatus(HttpServletRequest req, Model model);
		
		// 최유성 - 입고 내역 상세 페이지
		public void pdRecStatusAjax(HttpServletRequest req, Model model);
		
		// 최유성 - 입고 전표 등록 페이지 띄우기
		public void pdRecStatusAjax2(HttpServletRequest req, Model model);
		
		// 최유성 - 입고 전표 등록(insert)
		public void logsPdInsert(HttpServletRequest req, Model model);
}