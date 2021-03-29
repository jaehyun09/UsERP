package com.project.UsERP.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.UsERP.vo.UserVO;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	SqlSession sqlSession;

	// 중복확인 처리
	@Override
	public int idCheck(String strId) {
		return sqlSession.selectOne("com.project.UsERP.persistence.AdminDAO.idCheck", strId);
	}

	// 로그인 처리
	@Override
	public String pwdCheck(String strId) {
		return sqlSession.selectOne("com.project.UsERP.persistence.AdminDAO.pwdCheck", strId);
	}

	// 관리자 or 게스트 확인
	@Override
	public int gradeCheck(String strId) {
		String grade = sqlSession.selectOne("com.project.UsERP.persistence.AdminDAO.gradeCheck", strId);

		int gradeCnt = 0;

		if (grade.equals("ROLE_USER")) {
			gradeCnt = 1;
		} else {
			gradeCnt = 0;
		}

		return gradeCnt;
	}

	// 사용자의 접근 권한을 반환한다
	@Override
	public String getAuthority(String id) {
		return sqlSession.selectOne("com.project.UsERP.persistence.AdminDAO.getAuthority", id);
	}

	// 회원 정보를 반환한다
	@Override
	public UserVO getUsersInfo(String id) {
		return sqlSession.selectOne("com.project.UsERP.persistence.AdminDAO.getUsersInfo", id);
		
	}

}
