package com.project.UsERP.persistence;

import java.util.List;
import java.util.Map;

import com.project.UsERP.vo.AppointHistoryVO;
import com.project.UsERP.vo.DepartmentVO;
import com.project.UsERP.vo.EmployeeVO;
import com.project.UsERP.vo.HrCodeGroupVO;
import com.project.UsERP.vo.HrCodeVO;

public interface HrDAO {

	// 김은희 - 인사 코드 그룹 조회
	public List<HrCodeGroupVO> hrCgList();

	// 김은희 - 인사 코드 조회
	public List<HrCodeVO> hrCList();

	// 조명재 - 부서 조회
	public List<DepartmentVO> depList();
	
	// 조명재 - 인사 발령 목록 갯수
	public int getAppointmentCnt();
	
	// 조명재 - 인사 발령 조회
	public List<AppointHistoryVO> appointmentList(Map<String, Object> map);
	
	// 김은희 - 인사카드 조회
	public List<EmployeeVO> hrCardList();

	// 김은희 - 인사카드 상세페이지 조회
	public EmployeeVO hrCardDetail(int emp_code);
	
	// 김은희 - 인사카드 등록
	public int hrCardInsert(EmployeeVO vo);

}
