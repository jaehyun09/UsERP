package com.project.UsERP.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.ProductVO;
import com.project.UsERP.vo.SalesVO;

//최유성
@Repository
public class SalesDAOImpl implements SalesDAO {

	@Autowired
	SqlSession sqlSession;

	// 최유성 - 판매 거래처 목록
	@Override
	public List<CompanyVO> salesCompanySelect() {

		return sqlSession.selectList("com.project.UsERP.persistence.SalesDAO.salesCompanySelect");
	}

	// 최유성 - 상품 목록
	@Override
	public List<ProductVO> salesProductSelect() {

		return sqlSession.selectList("com.project.UsERP.persistence.SalesDAO.salesProductSelect");
	}

	// 이재홍 - 판매내역 
	@Override
	public List<SalesVO> salesList() {

		return sqlSession.selectList("com.project.UsERP.persistence.SalesDAO.salesList");
	}
}
