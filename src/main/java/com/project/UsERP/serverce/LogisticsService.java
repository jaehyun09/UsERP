package com.project.UsERP.serverce;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface LogisticsService {

	// 창고 등록
	public void insertWarehouse(HttpServletRequest req, Model model);
	
}
