package com.project.UsERP.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.project.UsERP.persistence.AndroidDAO;
import com.project.UsERP.vo.AccountStatementVO;
import com.project.UsERP.vo.EmployeeVO;

@Service
public class AndroidServiceImpl implements AndroidService {
	
	@Autowired
	AndroidDAO dao;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	// 조명재 - 안드로이드 로그인
	@Override
	public Map<String, String> androidLogin(HttpServletRequest req) {
		// 안드로이드에서 전달한 값
		String emp_code = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		
		// 로그인 처리
		EmployeeVO vo = dao.getEmpInfo(emp_code);
		
		boolean check = false;
		if(passwordEncoder.matches(pwd, vo.getEmp_pwd())) check = true;
		
		// 웹에서 안드로이드로 전달할 값
		Map<String, String> map = new HashMap<String, String>();
		if(check) {
			map.put("emp_name", vo.getEmp_name());
		} else {
			map.put("emp_name", null);
		}
		
		return map;
	}
	
	// 이재홍 - 손익계산서
	// @Override
	// public AccountStatementVO calculation(HttpServletRequest req) {
		
		// return 
		
	}

	
	

