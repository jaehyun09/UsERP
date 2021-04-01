package com.project.UsERP.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.UsERP.vo.AccountStatementVO;
import com.project.UsERP.vo.AccountVO;
import com.project.UsERP.vo.BankVO;
import com.project.UsERP.vo.SalaryStatementVO;

@Repository
public class AdDAOImpl implements AdDAO {

	@Autowired
	SqlSession sqlSession;

	// 강재현 : 회계보고서 - 재무상태표
	public int get1() {
		AdDAO dao = sqlSession.getMapper(AdDAO.class);
		return dao.get1();
		// return sqlSession.selectOne("com.project.UsERP.persistence.AdDAO.get1");
	}

	public int get2() {
		return sqlSession.selectOne("com.project.UsERP.persistence.AdDAO.get2");
	}

	public int get3() {
		return sqlSession.selectOne("com.project.UsERP.persistence.AdDAO.get3");
	}

	public int get4() {
		return sqlSession.selectOne("com.project.UsERP.persistence.AdDAO.get4");
	}
	// 이재홍 : 회계보고서 - 손익계산서

	// 이재홍 : 계좌 관리 - 계좌 리스트
	@Override
	public List<BankVO> bankList() {
		return sqlSession.selectList("com.project.UsERP.persistence.AdDAO.bankList");
	}

	// 강재현 : 계정 관리 - 계정 리스트
	@Override
	public List<AccountVO> accontList() {
		return sqlSession.selectList("com.project.UsERP.persistence.AdDAO.accontList");
	}

	// 강재현 : 전표 관리 - 회계 전표
	public List<AccountStatementVO> statementList() {
		return sqlSession.selectList("com.project.UsERP.persistence.AdDAO.statementList");
	}

	// 강재현 : 전표 관리 - 회계 전표 상세 페이지
	public AccountStatementVO getacStamentDetail(int num) {
		return sqlSession.selectOne("com.project.UsERP.persistence.AdDAO.getacStamentDetail", num);
	}

	// 강재현 : 전표 관리 - 회계 전표 (승인 & 미승인)
	@Override
	public int acupdatestatment(AccountStatementVO vo) {
		return sqlSession.update("com.project.UsERP.persistence.AdDAO.acupdatestatment", vo);
	}

	// 강재현 : 전표 관리 - 급여 전표
	public List<SalaryStatementVO> salarystatementList() {
		return sqlSession.selectList("com.project.UsERP.persistence.AdDAO.salarystatementList");
	}

	// 강재현 : 전표 관리 - 급여 전표 상세 페이지
	public SalaryStatementVO getsaStamentDetail(int num) {
		return sqlSession.selectOne("com.project.UsERP.persistence.AdDAO.getsaStamentDetail", num);
	}
	
	// 강재현 : 전표 관리 - 급여 전표 (승인 & 미승인)
	public int saupdatestatment(SalaryStatementVO vo) {
		return sqlSession.update("com.project.UsERP.persistence.AdDAO.saupdatestatment", vo);
	}

	// 이재홍 : 채권/채무 조회
	public List<AccountStatementVO> bondDebtList() {
		return sqlSession.selectList("com.project.UsERP.persistence.AdDAO.bondDebtList");
	}

}
