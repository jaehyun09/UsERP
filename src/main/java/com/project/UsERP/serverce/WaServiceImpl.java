package com.project.UsERP.serverce;

import java.util.List;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.project.UsERP.persistence.WaDAO;
import com.project.UsERP.vo.CommuteVO;
import com.project.UsERP.vo.EmployeeVO;
import com.project.UsERP.vo.WorkRecordVO;

@Service
public class WaServiceImpl implements WaService  {
	
	@Autowired
	WaDAO waDao;
	
	// 김은희 - 출퇴근 조회
	@Override
	public void commuteList(HttpServletRequest req, Model model) {
		List<CommuteVO> list = waDao.commuteList();
	      
	    model.addAttribute("list", list);
		
	}
	
	// 김은희 - 근태 조회
	@Override
	public void waList(HttpServletRequest req, Model model) {
		List<WorkRecordVO> list2 = waDao.waList();
	      
	    model.addAttribute("list2", list2);
		
	}

	// 김은희 - 근태 신청 사원 확인
	@Override
	public void empComfirm(HttpServletRequest req, Model model) {
		int emp_code = Integer.parseInt(req.getParameter("emp_code"));
		
		EmployeeVO vo = waDao.empComfirm(emp_code);
		
		int selectCnt = 0;
		if(vo != null) selectCnt = 1;
		
		model.addAttribute("selectCnt", selectCnt);
		model.addAttribute("vo", vo);
		model.addAttribute("emp_code", emp_code);
		
	}

}
