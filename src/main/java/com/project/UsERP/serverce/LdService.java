package com.project.UsERP.serverce;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface LdService {

	// 최유성 - 전표 관리
	public void logStatementList(HttpServletRequest req, Model model);

	// 김민수 - 창고 등록
	public void insertWarehouse(HttpServletRequest req, Model model);

	// 김민수 - 창고 목록
	public void warehouseList(HttpServletRequest req, Model model);

	// 김민수 - 창고 상세 목록
	public void warehouseDetail(HttpServletRequest req, Model model);

	// 김민수 - 거래처 목록 조회(검색포함)
	public void companyList(HttpServletRequest req, Model model);
	
	// 김민수 - 상품 목록 조회(검색포함)
	public void productList(HttpServletRequest req, Model model);
	
	// 김민수 - 재고 현황(검색포함)
	public void inventoryStatusList(HttpServletRequest req, Model model);
	
	// 김민수 - 재고 관리 상품 조회
	public void selectProduct(HttpServletRequest req, Model model);
	
	// 김민수 - 재고 관리 창고 조회
	public void selectWarehouse(HttpServletRequest req, Model model);
	
	// 김민수 - 재고 이동 등록, 창고등록(불량품,출고대기), 수불부 내역등록
	public void moveWareInsert(HttpServletRequest req, Model model);
	
	// 김민수 - 재고 이동 내역
	public void moveWarehouseList(HttpServletRequest req, Model model);
}
