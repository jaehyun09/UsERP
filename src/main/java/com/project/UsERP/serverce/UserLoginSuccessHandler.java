package com.project.UsERP.serverce;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;

import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.project.UsERP.vo.UserVO;


//로그인이 성공한 경우 자동으로 실행
public class UserLoginSuccessHandler implements AuthenticationSuccessHandler {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	public UserLoginSuccessHandler(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	// 로그인이 성공한 경우에 실행한 코드
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		
		UserVO vo = (UserVO)authentication.getPrincipal();
		System.out.println("UserVO==> " + vo);
		
		String msg = authentication.getName() + "님 환영합니다";
		System.out.println("아이디 ==> " + authentication.getName());
		
		String grade = sqlSession.selectOne("com.project.UsERP.persistence.AdminDAO.gradeCheck", authentication.getName());
		int gradeCnt = 0;
		
		if(grade.equals("ROLE_USER")) {
			gradeCnt = 1;
		}else {
			gradeCnt = 0;
		}
		
		request.setAttribute("msg", msg);
		request.getSession().setAttribute("mem_id", authentication.getName());
		request.getSession().setAttribute("grade", gradeCnt);
		
		RequestDispatcher rd = request.getRequestDispatcher("/main.do");
		
		
		rd.forward(request, response);
	}
	
}
