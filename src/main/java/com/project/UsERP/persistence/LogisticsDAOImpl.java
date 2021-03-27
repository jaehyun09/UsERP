package com.project.UsERP.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

}