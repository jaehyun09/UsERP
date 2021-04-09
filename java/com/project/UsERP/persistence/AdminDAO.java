package com.project.UsERP.persistence;

import java.util.List;

import com.project.UsERP.vo.AlertVO;
import com.project.UsERP.vo.EmployeeVO;

public interface AdminDAO {

	// 강재현 - 중복확인 처리
	public int idCheck(String strId);

	// 강재현 - 로그인 처리
	public String pwdCheck(String strId);

	// 강재현 - 관리자 or 게스트 확인
	public int gradeCheck(String strId);

	// 조명재 - 회원 정보를 반환한다
	public EmployeeVO getUsersInfo(String emp_code);

	// 조명재 - 비밀번호를 생성한다
	public int signinPro(String emp_code, String emp_pwd);

	// 강재현 - 알림 리스트
	public List<AlertVO> accsAlertList();

	// 강재현 - 알림 리스트
	public List<AlertVO> logsAlertList();

	// 강재현 - 알림 리스트
	public List<AlertVO> ssAlertList();
	
	// 강재현 - 알림 리스트
	public List<AlertVO> stAlertList();

	// 강재현 - 알림 업데이트
	public int alertUpdate(AlertVO vo);

}
