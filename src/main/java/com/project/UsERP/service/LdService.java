package com.project.UsERP.service;

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

	// 김민수 - 재고 현황(검색포함)
	public void inventoryStatusList(HttpServletRequest req, Model model);
}
