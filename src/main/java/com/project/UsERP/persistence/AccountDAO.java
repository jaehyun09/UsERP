package com.project.UsERP.persistence;

import java.util.List;

import com.project.UsERP.vo.AccountVO;
import com.project.UsERP.vo.BankVO;
import com.project.UsERP.vo.SalaryStatementVO;
import com.project.UsERP.vo.StatementVO;

public interface AccountDAO {
	
	// 회계보고서 - 재무상태표
	
	// 회계보고서 - 손익계산서
	
	// 계좌 관리 - 계좌 리스트
	public List<BankVO> bankList();
	
	// 계정 관리 - 계정 리스트
	public List<AccountVO> accontList();
	
	// 전표 관리 - 회계 전표
	public List<StatementVO> statementList();
	
	// 전표 관리 - 회계 전표 (승인) 
	
	// 전표 관리 - 회계 전표 (미승인) 
	
	// 전표 관리 - 급여 전표
	public List<SalaryStatementVO> salarystatementList();
	
	// 전표 관리 - 급여 전표 (승인)
	
	// 전표 관리 - 급여 전표 (미승인)
	
	// 채권/채무 조회
	
	
}
