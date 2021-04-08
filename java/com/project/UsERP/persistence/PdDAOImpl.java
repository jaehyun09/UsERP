package com.project.UsERP.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.UsERP.vo.AccountStatementVO;
import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.ProductVO;

@Repository
public class PdDAOImpl implements PdDAO{
	
	@Autowired
	SqlSession sqlSession;

	// 최유성 - 구매 거래처 목록
	@Override
	public List<CompanyVO> purchasingCompanySelect() {

		return sqlSession.selectList("com.project.UsERP.persistence.PdDAO.purchasingCompanySelect");
	}

	// 최유성 - 구매 거래처 목록
	@Override
	public List<ProductVO> purchasingProductSelect() {

		return sqlSession.selectList("com.project.UsERP.persistence.PdDAO.purchasingProductSelect");
	}

	// 이재홍 - 구매내역
	@Override
	public List<AccountStatementVO> buyList() {

		return sqlSession.selectList("com.project.UsERP.persistence.PdDAO.buyList");
	}

}
