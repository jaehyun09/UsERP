package com.project.UsERP.serverce;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.project.UsERP.persistence.PersonnelDAO;
import com.project.UsERP.vo.DepartmentVO;
import com.project.UsERP.vo.PerCodeGroupVO;
import com.project.UsERP.vo.PerCodeVO;

@Service
public class PersonnelServiceImpl implements PersonnelService {

	@Autowired
	PersonnelDAO dao;

	// 김은희 - 인사 코드 그룹 조회
	@Override
	public void perCgList(HttpServletRequest req, Model model) {

		List<PerCodeGroupVO> list = dao.perCgList();

		model.addAttribute("list", list);

	}

	// 김은희 - 인사 코드 조회
	@Override
	public void perCList(HttpServletRequest req, Model model) {

		List<PerCodeVO> list2 = dao.perCList();

		model.addAttribute("list2", list2);

	}

	// 조명재 - 부서 조회
	@Override
	public void depList(HttpServletRequest req, Model model) {

		List<DepartmentVO> list3 = dao.depList();

		model.addAttribute("list3", list3);
	}

}
