package com.project.UsERP.persistence;

import java.util.List;

import com.project.UsERP.vo.AccountStatementVO;
import com.project.UsERP.vo.AccountVO;
import com.project.UsERP.vo.BankVO;
import com.project.UsERP.vo.SalaryStatementVO;

public interface AdDAO {
	
	// 강재현 - 회계보고서 - 재무상태표
	
	// 이재홍 - 회계보고서 - 손익계산서
	
	// 이재홍 - 계좌 관리 - 계좌 리스트
	public List<BankVO> bankList();
	
	// 강재현 - 계정 관리 - 계정 리스트
	// public List<AccountVO> accontList();
	
	// 강재현 - 전표 관리 - 회계 전표
	public List<AccountStatementVO> statementList();
	
	// 강재현 - 전표 관리 - 회계 전표 (승인) 
	
	// 강재현 - 전표 관리 - 회계 전표 (미승인) 
	
	// 강재현 - 전표 관리 - 급여 전표
	public List<SalaryStatementVO> salarystatementList();
	
	// 강재현 - 전표 관리 - 급여 전표 (승인)
	
	// 강재현 - 전표 관리 - 급여 전표 (미승인)
	
	// 이재홍 - 채권/채무 조회

}
