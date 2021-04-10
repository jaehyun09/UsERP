package com.project.UsERP.persistence;

import com.project.UsERP.vo.EmployeeVO;

public interface AndroidDAO {
	
	// 조명재 - 사원정보를 반환한다
	public EmployeeVO getEmpInfo(String emp_code);
	
}
