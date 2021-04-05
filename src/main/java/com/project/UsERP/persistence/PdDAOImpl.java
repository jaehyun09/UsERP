package com.project.UsERP.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.UsERP.vo.AccountStatementVO;
import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.LogisticsStatementVO;
import com.project.UsERP.vo.ProductVO;

@Repository
public class PdDAOImpl implements PdDAO{
	
	@Autowired
	SqlSession sqlSession;

	// 최유성 - 구매 거래처 목록
	@Override
	public List<CompanyVO> pdCompanySelect() {

		return sqlSession.selectList("com.project.UsERP.persistence.PdDAO.pdCompanySelect");
	}

	// 최유성 - 상품 목록
	@Override
	public List<ProductVO> pdProductSelect() {

		return sqlSession.selectList("com.project.UsERP.persistence.PdDAO.pdProductSelect");
	}
	
	// 최유성 - 입고 내역
	@Override
	public List<LogisticsStatementVO> pdStockInOrder() {
		
		return sqlSession.selectList("com.project.UsERP.persistence.PdDAO.pdStockInOrder");
	}

	// 이재홍 - 구매내역
	@Override
	public List<AccountStatementVO> buyList() {

		return sqlSession.selectList("com.project.UsERP.persistence.PdDAO.buyList");
	}

	// 최유성 - 회계전표 승인 냉겨
	@Override
	public List<AccountStatementVO> AccountStatement() {
		
		return sqlSession.selectList("com.project.UsERP.persistence.PdDAO.AccountStatement");
	}

	// 최유성 - 입고 전표 등록
	@Override
	public AccountStatementVO getAccountStatement(int accs_code) {
		
		return sqlSession.selectOne("com.project.UsERP.persistence.PdDAO.getAccountStatement",accs_code);
	}

}
