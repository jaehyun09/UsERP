package com.project.UsERP.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.UsERP.vo.CommuteVO;
import com.project.UsERP.vo.WorkRecordVO;

@Repository
public class WaDAOImpl implements WaDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	// 김은희 - 출퇴근 조회
	@Override
	public List<CommuteVO> commuteList() {
		return sqlSession.selectList("com.project.UsERP.persistence.WaDAO.commuteList");
	}
	
	// 김은희 - 근태 조회
	@Override
	public List<WorkRecordVO> waList() {
		return sqlSession.selectList("com.project.UsERP.persistence.WaDAO.waList");
	}
	
	// 김은희 - 근태 신청 사원 확인
	@Override
	public int empComfirm(int emp_code) {
		return sqlSession.selectOne("com.project.UsERP.persistence.WaDAO.empComfirm", emp_code);
	}
	

}
