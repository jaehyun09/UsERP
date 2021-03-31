package com.project.UsERP.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.UsERP.vo.AccountStatementVO;
import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.ProductVO;

@Repository
public class StDAOImpl implements StDAO{
	
	@Autowired
	SqlSession sqlSession;

	// 최유성 - 판매 거래처 목록
	@Override
	public List<CompanyVO> salesCompanySelect() {

		return sqlSession.selectList("com.project.UsERP.persistence.StDAO.salesCompanySelect");
	}

	// 최유성 - 상품 목록
	@Override
	public List<ProductVO> salesProductSelect() {

		return sqlSession.selectList("com.project.UsERP.persistence.StDAO.salesProductSelect");
	}

	// 이재홍 - 판매내역 
	@Override
	public List<AccountStatementVO> salesList() {

		return sqlSession.selectList("com.project.UsERP.persistence.StDAO.salesList");
	}
	
	// 이재홍 - 판매전표등록 
	@Override
    public int insertSalesStatement(AccountStatementVO vo) {
      
       return sqlSession.insert("com.project.UsERP.persistence.StDAO.insertSalesStatement", vo);
    }

}
