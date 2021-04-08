package com.project.UsERP.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.project.UsERP.persistence.AdminDAO;
import com.project.UsERP.vo.EmployeeVO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	AdminDAO dao;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	// 조명재 - 사원확인 - 사원번호를 확인한다
	@Override
	public void confirm(HttpServletRequest req, Model model) {
		String emp_code = req.getParameter("emp_code");
		
		EmployeeVO vo = dao.getUsersInfo(emp_code);
		
		int selectCnt = 0;
		if(vo != null) selectCnt = 1;
		
		model.addAttribute("selectCnt", selectCnt);
		model.addAttribute("vo", vo);
		model.addAttribute("emp_code", emp_code);
	}
	
	// 조명재 - 사원 정보가 일치하는지 확인다
	@Override
	public void signinPro(HttpServletRequest req, Model model) {
		String emp_code = req.getParameter("emp_code");
		String emp_pwd = req.getParameter("emp_pwd");
		String emp_jumin = req.getParameter("emp_jumin");
		
		EmployeeVO vo = dao.getUsersInfo(emp_code);
		
		int enabled = 0;
		boolean check = false;

		if(vo.getEmp_enabled().equals("1")) {
			enabled = 1;
		} else {
			if(emp_jumin.equals(vo.getEmp_jumin())) check = true;
		}
		
		int updateCnt = 0;
		if(check) updateCnt = dao.signinPro(emp_code, passwordEncoder.encode(emp_pwd));
		
		model.addAttribute("enabled", enabled);
		model.addAttribute("updateCnt", updateCnt);
		model.addAttribute("emp_name", vo.getEmp_name());
	}
}
