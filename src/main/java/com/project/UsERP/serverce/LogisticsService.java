package com.project.UsERP.serverce;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface LogisticsService {
	
	//전표 관리
	public void logStatementList(HttpServletRequest req, Model model);

}
