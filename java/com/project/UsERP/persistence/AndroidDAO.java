package com.project.UsERP.persistence;

import com.project.UsERP.vo.AccountStatementVO;
import com.project.UsERP.vo.EmployeeVO;

public interface AndroidDAO {
	
	// 조명재 - 사원정보를 반환한다
	public EmployeeVO getEmpInfo(String emp_code);
	
	// 이재홍 - 손익계산서
	public AccountStatementVO getIncome();
	
}
