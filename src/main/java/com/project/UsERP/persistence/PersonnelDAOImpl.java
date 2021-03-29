package com.project.UsERP.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.UsERP.vo.DepartmentVO;
import com.project.UsERP.vo.PerCodeGroupVO;
import com.project.UsERP.vo.PerCodeVO;

@Repository
public class PersonnelDAOImpl implements PersonnelDAO {

	@Autowired
	SqlSession sqlSession;

	// 인사 코드 그룹 조회
	@Override
	public List<PerCodeGroupVO> perCgList() {

		return sqlSession.selectList("com.project.UsERP.persistence.PersonnelDAO.perCgList");
	}

	// 인사 코드 조회
	@Override
	public List<PerCodeVO> perCList() {

		return sqlSession.selectList("com.project.UsERP.persistence.PersonnelDAO.perCList");
	}

	// 부서 조회
	@Override
	public List<DepartmentVO> depList() {

		return sqlSession.selectList("com.project.UsERP.persistence.PersonnelDAO.depList");
	}

}
