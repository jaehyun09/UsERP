package com.project.UsERP.persistence;

import com.project.UsERP.vo.EmployeeVO;

public interface AdminDAO {
   
   // 강재현 - 중복확인 처리
   public int idCheck(String strId);
   
   // 강재현 - 로그인 처리
   public String pwdCheck(String strId);

   // 강재현 - 관리자 or 게스트 확인
   public int gradeCheck(String strId);
   
   // 강재현 - 사용자의 접근 권한을 반환한다
   public String getAuthority(String id);
         
   // 조명재 - 회원 정보를 반환한다
   public EmployeeVO getUsersInfo(String id);
         
}