package com.project.UsERP.persistence;

import java.beans.Statement;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.ProductVO;
import com.project.UsERP.vo.WarehouseVO;

@Repository
public class LogisticsDAOImpl implements LogisticsDAO {

	@Autowired
	SqlSession sqlSession;
	
	
	// 양품창고 등록
	@Override
	public int insertGoodWare(WarehouseVO vo) {
		return sqlSession.insert("com.project.UsERP.persistence.LogisticsDAO.insertGoodWare", vo);
	}

	// 불량품창고 등록
	@Override
	public int insertBadWare(WarehouseVO vo) {
		return sqlSession.insert("com.project.UsERP.persistence.LogisticsDAO.insertBadWare", vo);
	}

	// 출고대기창고 등록
	@Override
	public int insertWaitWare(WarehouseVO vo) {
		return sqlSession.insert("com.project.UsERP.persistence.LogisticsDAO.insertWaitWare", vo);
	}

	// 창고 목록
	@Override
	public List<WarehouseVO> warehouseList() {
		return sqlSession.selectList("com.project.UsERP.persistence.LogisticsDAO.warehouseList");
	}

	// 창고 상세 목록
	@Override
	public WarehouseVO warehouseDetail(int code) {
		return sqlSession.selectOne("com.project.UsERP.persistence.LogisticsDAO.warehouseDetail", code);
	}

	// 거래처 갯수 구하기
	@Override
	public int getCompanyCnt(String compKeyword) {
		return sqlSession.selectOne("com.project.UsERP.persistence.LogisticsDAO.getCompanyCnt", compKeyword);
	}

	// 거래처 조회
	@Override
	public List<CompanyVO> CompanyList(Map<String, Object> map) {
		return sqlSession.selectList("com.project.UsERP.persistence.LogisticsDAO.CompanyList", map);
	}

	// 상품 갯수 구하기
	@Override
	public int getProductCnt(String proKeyword) {
		return sqlSession.selectOne("com.project.UsERP.persistence.LogisticsDAO.getProductCnt", proKeyword);
	}

	// 상품 목록
	@Override
	public List<ProductVO> ProductList(Map<String, Object> map) {
		return sqlSession.selectList("com.project.UsERP.persistence.LogisticsDAO.ProductList", map);
	}
	
	
	
	
	

}
