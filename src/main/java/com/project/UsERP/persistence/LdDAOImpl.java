package com.project.UsERP.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.ProductVO;
import com.project.UsERP.vo.StockVO;
import com.project.UsERP.vo.WarehouseVO;

@Repository
public class LdDAOImpl implements LdDAO{
	
	@Autowired
	SqlSession sqlSession;

	// 최유성 - 입고내역 미승인
	@Override
	public List<StockVO> stockInOrder1() {
		
		return sqlSession.selectList("com.project.UsERP.persistence.LdDAO.stockInOrder1");
	}

	// 최유성 - 입고내역 승인
	@Override
	public List<StockVO> stockInOrder2() {
		return sqlSession.selectList("com.project.UsERP.persistence.LdDAO.stockInOrder2");
	}
	
	// 최유성 - 출고내역 미승인
	@Override
	public List<StockVO> stockOutOrder1() {
		
		return sqlSession.selectList("com.project.UsERP.persistence.LdDAO.stockOutOrder1");
	}

	// 최유성 - 출고내역 승인
	@Override
	public List<StockVO> stockOutOrder2() {
		return sqlSession.selectList("com.project.UsERP.persistence.LdDAO.stockOutOrder2");
	}

	// 김민수 - 양품창고 등록
	@Override
	public int insertGoodWare(WarehouseVO vo) {
		return sqlSession.insert("com.project.UsERP.persistence.LdDAO.insertGoodWare", vo);
	}

	// 김민수 - 불량품창고 등록
	@Override
	public int insertBadWare(WarehouseVO vo) {
		return sqlSession.insert("com.project.UsERP.persistence.LdDAO.insertBadWare", vo);
	}

	// 김민수 - 출고대기창고 등록
	@Override
	public int insertWaitWare(WarehouseVO vo) {
		return sqlSession.insert("com.project.UsERP.persistence.LdDAO.insertWaitWare", vo);
	}

	// 김민수 - 창고 목록
	@Override
	public List<WarehouseVO> warehouseList() {
		return sqlSession.selectList("com.project.UsERP.persistence.LdDAO.warehouseList");
	}

	// 김민수 - 창고 상세 목록
	@Override
	public WarehouseVO warehouseDetail(int code) {
		return sqlSession.selectOne("com.project.UsERP.persistence.LdDAO.warehouseDetail", code);
	}
	
	// 김민수 - 검색 거래처 갯수 구하기
	@Override
	public int getCompanyCnt(String compKeyword) {
		return sqlSession.selectOne("com.project.UsERP.persistence.LdDAO.getCompanyCnt", compKeyword);
	}
	
	// 김민수 - 검색 거래처 조회
	@Override
	public List<CompanyVO> CompanyList(Map<String, Object> map) {
		return sqlSession.selectList("com.project.UsERP.persistence.LdDAO.CompanyList", map);
	}
	
	// 김민수 - 검색 상품 갯수 구하기
	@Override
	public int getProductCnt(String proKeyword) {
		return sqlSession.selectOne("com.project.UsERP.persistence.LdDAO.getProductCnt", proKeyword);
	}
	
	// 김민수 - 검색 상품 조회
	@Override
	public List<ProductVO> ProductList(Map<String, Object> map) {
		return sqlSession.selectList("com.project.UsERP.persistence.LdDAO.ProductList", map);
	}
	
}
