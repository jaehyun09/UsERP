package com.project.UsERP.persistence;

import java.util.List;

import com.project.UsERP.vo.CommuteVO;
import com.project.UsERP.vo.EmployeeVO;
import com.project.UsERP.vo.WorkRecordVO;

public interface WaDAO {
	
	// 김은희 - 출퇴근 조회
	public List<CommuteVO> commuteList();
	
	// 김은희 - 근태 조회
	public List<WorkRecordVO> waList();
	
	// 김은희 - 근태 신청 사원 확인
	public EmployeeVO empComfirm(int emp_code);
	

}
