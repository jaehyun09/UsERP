package com.project.UsERP.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.UsERP.vo.AccountStatementVO;
import com.project.UsERP.vo.EmployeeVO;

@Repository
public class AndroidDAOImpl implements AndroidDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	// 조명재 - 사원정보를 반환한다
	@Override
	public EmployeeVO getEmpInfo(String emp_code) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.getEmpInfo(emp_code);
	}
	
	// 이재홍 - 손익계산서
	@Override
	public AccountStatementVO getIncome() {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.getIncome();
	}
	
	
}
