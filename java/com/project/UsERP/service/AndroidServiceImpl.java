package com.project.UsERP.service;

import java.io.FileInputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.google.api.client.googleapis.auth.oauth2.GoogleCredential;
import com.google.firebase.messaging.FirebaseMessagingException;
import com.project.UsERP.persistence.AndroidDAO;
import com.project.UsERP.vo.EmployeeVO;

@Service
public class AndroidServiceImpl implements AndroidService {

	@Autowired
	AndroidDAO dao;

	@Autowired
	BCryptPasswordEncoder passwordEncoder;

	// 조명재 - 안드로이드 로그인
	@Override
	public Map<String, String> androidLogin(HttpServletRequest req) {
		// 안드로이드에서 전달한 값
		String emp_code = req.getParameter("id");
		String pwd = req.getParameter("pwd");

		// 로그인 처리
		EmployeeVO vo = dao.getEmpInfo(emp_code);

		boolean check = false;
		if (passwordEncoder.matches(pwd, vo.getEmp_pwd()))
			check = true;

		// 웹에서 안드로이드로 전달할 값
		Map<String, String> map = new HashMap<String, String>();
		if (check) {
			map.put("emp_name", vo.getEmp_name());
		} else {
			map.put("emp_name", null);
		}

		return map;
	}

	// 안등로이드 FCM 테스트
	@Override
	public void asFcmTest() throws FirebaseMessagingException {

		try {

			// 경로에 따라서 줘라
			String path = "/Users/dani/workspace11/UsERP/src/main/webapp/resources/google/userp-88ec6-firebase-adminsdk-vry15-2ff62ee2af.json";
			String MESSAGING_SCOPE = "https://www.googleapis.com/auth/firebase.messaging";
			String[] SCOPES = { MESSAGING_SCOPE };
			System.out.print(MESSAGING_SCOPE);
			GoogleCredential googleCredential = GoogleCredential.fromStream(new FileInputStream(path))
					.createScoped(Arrays.asList(SCOPES));
			googleCredential.refreshToken();

			HttpHeaders headers = new HttpHeaders();
			headers.add("content-type", MediaType.APPLICATION_JSON_VALUE);
			headers.add("Authorization", "Bearer " + googleCredential.getAccessToken());

			Map<String, Object> notification = new HashMap<>();
			notification.put("body", "안녕하세요");
			notification.put("title", "뭐하세요");

			Map<String, Object> message = new HashMap<>();
			// 기기별 토큰 주입
			message.put("token",
					"dT-Osj9QRPSsToMrJXDiVh:APA91bGconETyEiDkizy2SlLNDAeA0secdFWrF6wNcxUjy8HQV6FbuCAblxItkl_8rDIANI9IIN9Oa7nIWCCvFmQZpnukNFMRTMSscoBtExK7e7aJf5ii_2hsLCcvZss36MteHaf9UxW");
			message.put("notification", notification);
			
			Map<String, Object> jsonParams = new HashMap<>();
			jsonParams.put("message", message);

			HttpEntity<Map<String, Object>> httpEntity = new HttpEntity<>(jsonParams, headers);
			RestTemplate rt = new RestTemplate();

			// Firebase 프로젝트 ID별 삽입
			ResponseEntity<String> res = rt.exchange("https://fcm.googleapis.com/v1/projects/userp-88ec6/messages:send",
					HttpMethod.POST, httpEntity, String.class);

//	            if (res.getStatusCode() != HttpStatus.OK) {
//	                log.debug("FCM-Exception");
//	                log.debug(res.getStatusCode().toString());
//	                log.debug(res.getHeaders().toString());
//	                log.debug(res.getBody().toString());
//	                
//	            } else {
//	                log.debug(res.getStatusCode().toString());
//	                log.debug(res.getHeaders().toString());
//	                log.debug(res.getBody().toLowerCase());
//	                
//	            }
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
