package com.project.UsERP.persistence;

public interface AdminDAO {
	
	// 중복확인 처리
	public int idCheck(String strId);
	
	// 로그인 처리
	public String pwdCheck(String strId);

	// 관리자 or 게스트 확인
	public int gradeCheck(String strId);
	
}
