package com.project.UsERP.persistence;

import java.util.List;

import com.project.UsERP.vo.AccountStatementVO;
import com.project.UsERP.vo.AccountVO;
import com.project.UsERP.vo.BankVO;
import com.project.UsERP.vo.SalaryStatementVO;
import com.project.UsERP.vo.SettleVO;

public interface AdDAO {

	// 이재홍 - 기초 등록 - 계좌 리스트
	public List<BankVO> bankList();

	// 강재현 - 기초 등록 - 계정 리스트
	public List<AccountVO> accountList();

	// 강재현 - 회계보고서 - 재무상태표 상품
	public long get1();

	// 강재현 - 회계보고서 - 재무상태표 외상매출금
	public long get2();

	// 강재현 - 회계보고서 - 재무상태표
	public long get3();

	// 강재현 - 회계보고서 - 재무상태표 외상매입금
	public long get4();

	// 이재홍 - 회계보고서 - 손익계산서 매출액
	public long sum();

	// 이재홍 - 회계보고서 - 손익계산서 매출원가
	public long sum1();

	// 이재홍 - 회계보고서 - 손익계산서 판매비와 관리비
	public long sum2();
	
	// 조명재 - 회계보고서 - 기대수익률 - 매출액
	public List<SettleVO> totalSales();

	// 조명재 - 회계보고서 - 기대수익률 - 매출원가
	public List<SettleVO> costOfSales();
	
	// 조명재 - 회계보고서 - 기대수익률 - 판관비
	public List<SettleVO> costOfManagement();
	
	// 조명재 - 회계보고서 - 기대수익률 - 예측월
	public String getNextMonth();

	// 강재현 - 전표 관리 - 회계 전표
	public List<AccountStatementVO> statementList();

	// 강재현 - 전표 관리 - 회계 전표 상세 페이지
	public AccountStatementVO getStamentDetail(int accs_code);

	// 강재현 - 전표 관리 - 회계 전표 (승인 & 미승인)
	public int acupdatestatment(AccountStatementVO vo);

	// 강재현 - 전표 관리 - 급여 전표
	public List<SalaryStatementVO> salarystatementList();

	// 강재현 - 전표 관리 - 급여 전표 상세 페이지
	public SalaryStatementVO getsaStamentDetail(int ss_code);

	// 강재현 - 전표 관리 - 급여 전표 (승인 & 미승인)
	public int saupdatestatment(SalaryStatementVO vo);

	// 이재홍 - 전표 관리 - 채권/채무 조회
	public List<AccountStatementVO> bondDebtList();

	// 이재홍 - 전표 관리 - 채권/채무 상세페이지
	public AccountStatementVO bdStatementDetail(int num);


}
