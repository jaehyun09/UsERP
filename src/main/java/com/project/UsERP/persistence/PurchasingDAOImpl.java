package com.project.UsERP.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.UsERP.vo.BuyVO;
import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.ProductVO;

//최유성
@Repository
public class PurchasingDAOImpl implements PurchasingDAO {

	@Autowired
	SqlSession sqlSession;

	// 최유성 - 구매 거래처 목록
	@Override
	public List<CompanyVO> purchasingCompanySelect() {

		return sqlSession.selectList("com.project.UsERP.persistence.PurchasingDAO.purchasingCompanySelect");
	}

	// 최유성 - 구매 거래처 목록
	@Override
	public List<ProductVO> purchasingProductSelect() {

		return sqlSession.selectList("com.project.UsERP.persistence.PurchasingDAO.purchasingProductSelect");
	}

	// 이재홍 - 구매내역
	@Override
	public List<BuyVO> buyList() {

		return sqlSession.selectList("com.project.UsERP.persistence.PurchasingDAO.buyList");
	}
}
