package com.project.UsERP.serverce;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.project.UsERP.persistence.HrDAO;
import com.project.UsERP.vo.DepartmentVO;
import com.project.UsERP.vo.HrCodeGroupVO;
import com.project.UsERP.vo.HrCodeVO;

@Service
public class HrServiceImpl implements HrService {

	@Autowired
	HrDAO hrdao;

	// 인사 코드 그룹 조회
		@Override
		public void hrCgList(HttpServletRequest req, Model model) {

			List<HrCodeGroupVO> list = hrdao.hrCgList();

			model.addAttribute("list", list);
			
		}

		
		// 인사 코드 조회
		@Override 
		public void hrCList(HttpServletRequest req, Model model) {
	  
	  	   List<HrCodeVO> list2 = hrdao.hrCList();
		  
		   model.addAttribute("list2", list2); 
		  
		}

		// 부서 조회
		@Override
		public void depList(HttpServletRequest req, Model model) {
			
		   List<DepartmentVO> list3 = hrdao.depList();
			  
		   model.addAttribute("list3", list3); 
		}

}
