package com.project.UsERP.serverce;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface LogisticsService {

	// 창고 등록
	public void insertWarehouse(HttpServletRequest req, Model model);
	
	// 창고 목록
	public void warehouseList(HttpServletRequest req, Model model);
	
	// 창고 상세 목록
	public void warehouseDetail(HttpServletRequest req, Model model);

	// 거래처 목록 조회
	public void companyList(HttpServletRequest req, Model model);
	
	// 상품 목록 조회
	public void productList(HttpServletRequest req, Model model);
	
}
