package com.project.UsERP.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.UsERP.vo.StockOrderVO;

@Repository
public class LogisticsDAOImpl implements LogisticsDAO {

	@Autowired
	SqlSession sqlSession;

	//입고내역 미승인
	@Override
	public List<StockOrderVO> stockInOrder1() {
		
		return sqlSession.selectList("com.project.UsERP.persistence.LogisticsDAO.stockInOrder1");
	}

	//입고내역 승인
	@Override
	public List<StockOrderVO> stockInOrder2() {
		return sqlSession.selectList("com.project.UsERP.persistence.LogisticsDAO.stockInOrder2");
	}
	
	//출고내역 미승인
	@Override
	public List<StockOrderVO> stockOutOrder1() {
		
		return sqlSession.selectList("com.project.UsERP.persistence.LogisticsDAO.stockOutOrder1");
	}

	//출고내역 승인
	@Override
	public List<StockOrderVO> stockOutOrder2() {
		return sqlSession.selectList("com.project.UsERP.persistence.LogisticsDAO.stockOutOrder2");
	}

	

}
