package com.project.UsERP.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.UsERP.vo.AccountVO;
import com.project.UsERP.vo.BankVO;
import com.project.UsERP.vo.SalaryStatementVO;
import com.project.UsERP.vo.StatementVO;

@Repository
public class AccountDAOImpl implements AccountDAO {

	@Autowired
	SqlSession sqlSession;

	// 회계보고서 - 재무상태표
	
	// 회계보고서 - 손익계산서
		
	// 계좌 관리 - 계좌 리스트
	@Override
	public List<BankVO> bankList() {
		
		return sqlSession.selectList("com.project.UsERP.persistence.AccountDAO.bankList");
	}
	
	// 계정 관리 - 계정 리스트
	@Override
	public List<AccountVO> accontList() {
		
		return sqlSession.selectList("com.project.UsERP.persistence.AccountDAO.accontList");
		
	}

	// 전표 관리 - 회계 전표
	public List<StatementVO> statementList() {
		
		return sqlSession.selectList("com.project.UsERP.persistence.AccountDAO.statementList");
		
	}

	// 전표 관리 - 회계 전표 (승인)

	// 전표 관리 - 회계 전표 (미승인)

	// 전표 관리 - 급여 전표
	public List<SalaryStatementVO> salarystatementList() {
		
		return sqlSession.selectList("com.project.UsERP.persistence.AccountDAO.salarystatementList");
		
	}

	// 전표 관리 - 급여 전표 (승인)

	// 전표 관리 - 급여 전표 (미승인)

	// 채권/채무 조회

}
