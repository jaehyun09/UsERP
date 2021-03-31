package com.project.UsERP.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface PdService {

	// 최유성 - 기초등록
	public void purBasicReg(HttpServletRequest req, Model model);

	// 최유성 - 입고현황
	public void purRecStatus(HttpServletRequest req, Model model);

	// 이재홍 - 구매현황
	public void purStatus(HttpServletRequest req, Model model);

}
