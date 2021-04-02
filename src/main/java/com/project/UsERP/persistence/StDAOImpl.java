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
public class StDAOImpl implements StDAO{
	
	@Autowired
	SqlSession sqlSession;

	// 강재현 : 기초등록 - 판매 거래처 목록
	@Override
	public List<CompanyVO> salesCompanySelect() {
		return sqlSession.selectList("com.project.UsERP.persistence.StDAO.salesCompanySelect");
	}

	// 강재현 : 기초등록 - 상품 목록
	@Override
	public List<ProductVO> salesProductSelect() {
		return sqlSession.selectList("com.project.UsERP.persistence.StDAO.salesProductSelect");
	}
	
	// 강재현 : 재고현황

	// 이재홍 : 판매 현황 - 판매 내역 & 승인 내역 
	@Override
	public List<AccountStatementVO> salesList() {
		return sqlSession.selectList("com.project.UsERP.persistence.StDAO.salesList");
	}
	
	// 이재홍 : 판매 전표 등록
	@Override
    public int insertSalesStatement(AccountStatementVO vo) {
       return sqlSession.insert("com.project.UsERP.persistence.StDAO.insertSalesStatement", vo);
    }
	
	// 강재현 : 출고현황 - 출고 내역
	public List<LogisticsStatementVO> logisticsList() {
		return sqlSession.selectList("com.project.UsERP.persistence.StDAO.logisticsList");
	}

	// 강재현 : 출고현황 - 출고 전표 등록
	public int insertLogsStatement(LogisticsStatementVO vo) {
		return sqlSession.insert("com.project.UsERP.persistence.StDAO.insertLogsStatement", vo);
	}
}
