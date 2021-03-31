package com.project.UsERP.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.UsERP.vo.DepartmentVO;
import com.project.UsERP.vo.HrCodeGroupVO;
import com.project.UsERP.vo.HrCodeVO;

@Repository
public class HrDAOImpl implements HrDAO {

	@Autowired
	SqlSession sqlSession;

	// 인사 코드 그룹 조회
	@Override
	public List<HrCodeGroupVO> hrCgList() {

		return sqlSession.selectList("com.project.UsERP.persistence.HrDAO.hrCgList");
	}

	// 인사 코드 조회
	@Override
	public List<HrCodeVO> hrCList() {

		return sqlSession.selectList("com.project.UsERP.persistence.HrDAO.hrCList");
	}

	// 부서 조회
	@Override
	public List<DepartmentVO> depList() {

		return sqlSession.selectList("com.project.UsERP.persistence.HrDAO.depList");
	}

}
