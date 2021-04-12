package com.project.UsERP.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.firebase.messaging.FirebaseMessagingException;
import com.project.UsERP.service.AndroidService;

@Controller
public class AndroidController {
	
	private static final Logger logger = LoggerFactory.getLogger(AndroidController.class);
	
	@Autowired
	AndroidService service;
	
	// 조명재 - 안드로이드 로그인
	@ResponseBody
	@RequestMapping("android/androidLogin")
	public Map<String, String> androidLogin(HttpServletRequest req) {
		logger.info("url: 안드로이드 로그인");
		
		Map<String, String> map = service.androidLogin(req);
		
		return map;
	}
	
	// button
	@RequestMapping("button")
	public String button() throws FirebaseMessagingException {
		logger.info("url: 안드로이드 알림");
		
		service.asFcmTest();
		
		return "main";
	}

}
