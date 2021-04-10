package com.project.UsERP.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface AndroidService {
	
	// 조명재 - 안드로이드 로그인
	public Map<String, String> androidLogin(HttpServletRequest req);
	
}
