package com.project.UsERP.service;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.project.UsERP.persistence.HrDAO;
import com.project.UsERP.vo.AppointHistoryVO;
import com.project.UsERP.vo.DepartmentVO;
import com.project.UsERP.vo.EmployeeVO;
import com.project.UsERP.vo.HrCodeGroupVO;
import com.project.UsERP.vo.HrCodeVO;

@Service
public class HrServiceImpl implements HrService {

	@Autowired
	HrDAO hrDao;

	// 김은희 - 인사 코드 그룹 조회
	@Override
	public void hrCodeGroupList(HttpServletRequest req, Model model) {
		List<HrCodeGroupVO> list = hrDao.hrCgList();
		
		model.addAttribute("list", list);
	}

	
	// 김은희 - 인사 코드 조회
	@Override 
	public void hrCodeList(HttpServletRequest req, Model model) {
		List<HrCodeVO> list2 = hrDao.hrCList();
		
		model.addAttribute("list2", list2);
	}
	
	// 조명재 - 부서 조회
	@Override
	public void depList(HttpServletRequest req, Model model) {
		List<DepartmentVO> list3 = hrDao.depList();
		
		model.addAttribute("list3", list3);
	}
	
	// 조명재 - 인사 코드 조회 - 직급
	@Override
	public void hrCodePosList(HttpServletRequest req, Model model) {
		List<HrCodeVO> list4 = hrDao.hrCodePosList();
		
		model.addAttribute("list4", list4);
	}
	
	// 김은희 - 인사카드 조회
	@Override
	public void hrCardList(HttpServletRequest req, Model model) {
		List<EmployeeVO> list5 = hrDao.hrCardList();
		
		model.addAttribute("list5", list5);
	}
	
	// 김은희 - 인사카드 상세페이지 조회
	@Override
	public void hrCardDetail(HttpServletRequest req, Model model) {
		int emp_code = Integer.parseInt(req.getParameter("emp_code"));
		
		EmployeeVO vo = hrDao.hrCardDetail(emp_code);
		
		model.addAttribute("vo", vo);
	}
	
	
	// 조명재 - 인사 발령(중메뉴) - 인사 발령 조회
	@Override
	public void appointmentList(HttpServletRequest req, Model model) {
		int pageSize = 15;
		int pageBlock = 3;
		
		int cnt = 0;
		int start = 0;
		int end = 0;
		
		int pageCnt = 0;
		int startPage = 0;
		int endPage = 0;
		
		String pageNum = "";
		int currentPage = 0;
		
		cnt = hrDao.getAppointmentCnt();
		
		pageCnt = (cnt / pageSize) + (cnt % pageSize > 0 ? 1 : 0);
		
		pageNum = req.getParameter("pageNum");
		if(pageNum == null) pageNum = "1";
		
		currentPage = Integer.parseInt(pageNum);
		
		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if(currentPage % pageBlock == 0) startPage -= pageBlock;
		
		endPage = startPage + pageBlock -1;
		if(endPage > pageCnt) endPage = pageCnt;
		
		start = (currentPage - 1) * pageSize + 1;
		end = start + pageSize - 1;
		
		model.addAttribute("cnt", cnt);
		model.addAttribute("pageNum", pageNum);
		
		if(cnt > 0) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);
			
			List<AppointHistoryVO> list6 = hrDao.appointmentList(map);
			model.addAttribute("list6", list6);
			
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("pageCnt", pageCnt);
			model.addAttribute("pageBlock", pageBlock);
			model.addAttribute("startPage", startPage);
			model.addAttribute("endPage", endPage);
		}
	}

	// 조명재 - 인사 발령(중메뉴) - 인사 발령
	@Override
	public void hrAppointmentPro(HttpServletRequest req, Model model) {
		String ap_cur_dep = req.getParameter("ap_cur_dep");
		String ap_cur_position = req.getParameter("ap_cur_position");
		String ap_pre_dep = req.getParameter("ap_pre_dep");
		String ap_pre_position = req.getParameter("ap_pre_position");
		String emp_code = req.getParameter("emp_code");
		
		AppointHistoryVO vo = new AppointHistoryVO();
		vo.setAp_cur_dep(ap_cur_dep);
		vo.setAp_cur_position(ap_cur_position);
		vo.setAp_pre_dep(ap_pre_dep);
		vo.setAp_pre_position(ap_pre_position);
		vo.setEmp_code(emp_code);
		
		int insertCnt = hrDao.hrAppointmentPro(vo);
		
		model.addAttribute("insertCnt", insertCnt);
	}
	
	// 김은희 - 인사카드 등록
	@Override
	public void hrCardInsert(MultipartHttpServletRequest req, Model model) {
		String uploadPath = "C:\\eclipse-workspace\\UsERP\\src\\main\\webapp\\resources\\images";
		
		MultipartFile image = req.getFile("emp_photo");
		String emp_photo = image.getOriginalFilename();
		
		String emp_code = req.getParameter("emp_code");
		String emp_name = req.getParameter("emp_name");
		int dep_code = Integer.parseInt(req.getParameter("dep_code"));
		String emp_position = req.getParameter("emp_position");
		long emp_cos = Integer.parseInt(req.getParameter("emp_cos"));
		String emp_jumin = req.getParameter("emp_jumin");
		String emp_address = req.getParameter("emp_address");
		String emp_tel = req.getParameter("emp_tel");
		String emp_phone = req.getParameter("emp_phone");
		String emp_email = req.getParameter("emp_email");
		int emp_port_no = Integer.parseInt(req.getParameter("emp_port_no"));
		String emp_account = req.getParameter("emp_account");
		String emp_bank = req.getParameter("emp_bank");
		
		try {
			// null값과 공백 방지
			if(image.getOriginalFilename() == null || image.getOriginalFilename().trim().equals("")) {
				emp_photo = "-";
			}
			
			image.transferTo(new File(uploadPath + image));
			
			EmployeeVO vo = new EmployeeVO();
			
			vo.setEmp_code(emp_code);
			vo.setEmp_name(emp_name);	
			vo.setEmp_cos(emp_cos);
			vo.setEmp_photo(emp_photo);
			vo.setEmp_jumin(emp_jumin);
			vo.setEmp_address(emp_address);
			vo.setEmp_tel(emp_tel);
			vo.setEmp_phone(emp_phone);
			vo.setEmp_email(emp_email);
			vo.setEmp_port_no(emp_port_no);
			vo.setEmp_bank(emp_bank);
			vo.setEmp_account(emp_account);
			vo.setDep_code(dep_code);
			
			int insertCnt = hrDao.hrCardInsert(vo);
			
			model.addAttribute("insertCnt", insertCnt);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	// 김은희 - 인사 카드 사번 중복확인
	@Override
	public void hrConfirmCode(HttpServletRequest req, Model model) {
		int emp_code = Integer.parseInt(req.getParameter("emp_code"));
  
		int cnt = hrDao.codeCheck(emp_code);
  
		model.addAttribute("selectCnt", cnt);
		model.addAttribute("emp_code", emp_code);
	}
	
	// 조명재 - 휴직자 조회	
	@Override
	public void hrLeaveList(HttpServletRequest req, Model model) {
		List<AppointHistoryVO> list7 = hrDao.hrLeaveList();
		
		model.addAttribute("list7", list7);
	}
	
	// 조명재 - 퇴직자 조회
	@Override
	public void hrRetireList(HttpServletRequest req, Model model) {
		List<AppointHistoryVO> list8 = hrDao.hrRetireList();
		
		model.addAttribute("list8", list8);
	}
	
}
