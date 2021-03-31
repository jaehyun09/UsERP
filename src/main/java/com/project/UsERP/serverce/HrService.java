package com.project.UsERP.serverce;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface HrService {

	// 인사 코드 그룹 조회
	public void hrCgList(HttpServletRequest req, Model model);

	// 인사 코드 조회
	public void hrCList(HttpServletRequest req, Model model);

	// 부서 조회
	public void depList(HttpServletRequest req, Model model);

}
