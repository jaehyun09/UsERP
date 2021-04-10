package com.project.UsERP.service;


import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.project.UsERP.persistence.AdminDAO;
import com.project.UsERP.vo.AlertVO;
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
		if (vo != null)
			selectCnt = 1;

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

		if (vo.getEmp_enabled().equals("1")) {
			enabled = 1;
		} else {
			if (emp_jumin.equals(vo.getEmp_jumin()))
				check = true;
		}

		int updateCnt = 0;
		if (check)
			updateCnt = dao.signinPro(emp_code, passwordEncoder.encode(emp_pwd));

		model.addAttribute("enabled", enabled);
		model.addAttribute("updateCnt", updateCnt);
		model.addAttribute("emp_name", vo.getEmp_name());
	}
	
	// 김은희 - 내 정보 수정 처리
	@Override
	public void mypageUpdateAction(MultipartHttpServletRequest req, Model model) {
		
		String uploadPath = "C:\\Dev76\\workspace\\upload\\";
		
		MultipartFile image = req.getFile("emp_photo");
		String emp_photo = image.getOriginalFilename();
		
		String emp_code = req.getParameter("emp_code");
		String emp_name = req.getParameter("emp_name");
		int dep_code = Integer.parseInt(req.getParameter("dep_code"));
		int hr_code = Integer.parseInt(req.getParameter("hr_code"));
		String emp_hire_date = req.getParameter("emp_hire_date");
		long emp_cos = Integer.parseInt(req.getParameter("emp_cos"));
		String emp_jumin = req.getParameter("emp_jumin");
  
		String address = "";
		String addcode = req.getParameter("addcode");
		String add1 = req.getParameter("add1");
		String add2 = req.getParameter("add2");
		
		address = addcode + "-" + add1 + "-" + add2;
		String emp_tel = req.getParameter("emp_tel");
		String emp_phone = req.getParameter("emp_phone");
		String emp_email = req.getParameter("emp_email");
		String emp_port_no = req.getParameter("emp_port_no");
		String emp_account = req.getParameter("emp_account");
		String emp_bank = req.getParameter("emp_bank");
		String emp_authority = req.getParameter("emp_authority");
		
		try {
			// null값과 공백 방지
			if(image.getOriginalFilename() == null || image.getOriginalFilename().trim().equals("")) {
				emp_photo = "avatar.jpg";
			}
		
			image.transferTo(new File(uploadPath + image));
			
			EmployeeVO updateVo = new EmployeeVO();
			
			updateVo.setHr_code(hr_code);
			updateVo.setEmp_code(emp_code);
			updateVo.setEmp_name(emp_name);	
			updateVo.setEmp_cos(emp_cos);
			updateVo.setEmp_photo(emp_photo);
			updateVo.setEmp_jumin(emp_jumin);
			updateVo.setEmp_address(address);
			updateVo.setEmp_tel(emp_tel);
			updateVo.setEmp_phone(emp_phone);
			updateVo.setEmp_email(emp_email);
			updateVo.setEmp_port_no(emp_port_no);
			updateVo.setEmp_bank(emp_bank);
			updateVo.setEmp_account(emp_account);
			updateVo.setDep_code(dep_code);
			updateVo.setEmp_authority(emp_authority);
			
			Map<String, Object> map = new HashMap<String, Object>();
			
			map.put("updateVo",updateVo);
			map.put("emp_hire_date",emp_hire_date);
			
			int updateCnt = dao.mypageUpdateAction(map);
			
			model.addAttribute("updateCnt", updateCnt);
				
		} catch(Exception e) {
			e.printStackTrace();
		}
				
	}

	// 강재현 - 알림 리스트
	@Override
	public void accsAlertList(HttpServletRequest req, Model model) {

		List<AlertVO> alert = dao.accsAlertList();
		int cnt = dao.getCnt();

		model.addAttribute("alertCnt", cnt);
		model.addAttribute("accsalert", alert);

	}

	// 강재현 - 알림 리스트
	@Override
	public void logsAlertList(HttpServletRequest req, Model model) {

		List<AlertVO> alert = dao.logsAlertList();
		int cnt = dao.getCnt();

		model.addAttribute("alertCnt", cnt);
		model.addAttribute("logsalert", alert);

	}

	// 강재현 - 알림 리스트
	@Override
	public void ssAlertList(HttpServletRequest req, Model model) {

		List<AlertVO> alert = dao.ssAlertList();
		int cnt = dao.getCnt();

		model.addAttribute("alertCnt", cnt);

		model.addAttribute("ssalert", alert);

	}

	// 강재현 - 알림 리스트
	@Override
	public void stAlertList(HttpServletRequest req, Model model) {

		List<AlertVO> alert = dao.stAlertList();


		model.addAttribute("stalert", alert);

	}

	// 강재현 - 알림 업데이트
	@Override
	public void alertUpdate(HttpServletRequest req, Model model) {
		int alert_code = Integer.parseInt(req.getParameter("alert_code"));
		AlertVO vo = new AlertVO();
		vo.setAlert_state(1);
		vo.setAlert_code(alert_code);

		int deleteCnt = dao.alertUpdate(vo);

		model.addAttribute("num", alert_code);
		model.addAttribute("deleteCnt", deleteCnt);

	}

}
