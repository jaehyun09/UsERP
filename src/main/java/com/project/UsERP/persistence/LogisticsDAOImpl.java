package com.project.UsERP.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.UsERP.vo.StockOrderVO;
import com.project.UsERP.vo.WarehouseVO;

@Repository
public class LogisticsDAOImpl implements LogisticsDAO {

	@Autowired
	SqlSession sqlSession;

	// 최유성 - 입고내역 미승인
	@Override
	public List<StockOrderVO> stockInOrder1() {
		
		return sqlSession.selectList("com.project.UsERP.persistence.LogisticsDAO.stockInOrder1");
	}

	// 최유성 - 입고내역 승인
	@Override
	public List<StockOrderVO> stockInOrder2() {
		return sqlSession.selectList("com.project.UsERP.persistence.LogisticsDAO.stockInOrder2");
	}
	
	// 최유성 - 출고내역 미승인
	@Override
	public List<StockOrderVO> stockOutOrder1() {
		
		return sqlSession.selectList("com.project.UsERP.persistence.LogisticsDAO.stockOutOrder1");
	}

	// 최유성 - 출고내역 승인
	@Override
	public List<StockOrderVO> stockOutOrder2() {
		return sqlSession.selectList("com.project.UsERP.persistence.LogisticsDAO.stockOutOrder2");
	}

	// 김민수 - 양품창고 등록
	@Override
	public int insertGoodWare(WarehouseVO vo) {
		return sqlSession.insert("com.project.UsERP.persistence.LogisticsDAO.insertGoodWare", vo);
	}

	// 김민수 - 불량품창고 등록
	@Override
	public int insertBadWare(WarehouseVO vo) {
		return sqlSession.insert("com.project.UsERP.persistence.LogisticsDAO.insertBadWare", vo);
	}

	// 김민수 - 출고대기창고 등록
	@Override
	public int insertWaitWare(WarehouseVO vo) {
		return sqlSession.insert("com.project.UsERP.persistence.LogisticsDAO.insertWaitWare", vo);
	}

	// 김민수 - 창고 목록
	@Override
	public List<WarehouseVO> warehouseList() {
		return sqlSession.selectList("com.project.UsERP.persistence.LogisticsDAO.warehouseList");
	}

	// 김민수 - 창고 상세 목록
	@Override
	public WarehouseVO warehouseDetail(int code) {
		return sqlSession.selectOne("com.project.UsERP.persistence.LogisticsDAO.warehouseDetail", code);
	}
	
}
