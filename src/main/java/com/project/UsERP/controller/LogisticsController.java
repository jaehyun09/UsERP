package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
//물류관리
@Controller
public class LogisticsController {
   private static final Logger logger = LoggerFactory.getLogger(LogisticsController.class);
   
	   // 기초 코드
	   @RequestMapping("/foundationcode")
	   public String foundationcode(HttpServletRequest req, Model model) {
	      logger.info("url ==> 기초 코드");
	
	      return "logistics/foundationcode";
	   }
	   
	   // 전표 관리
	   @RequestMapping("/statementlist")
	   public String statementlist(HttpServletRequest req, Model model) {
	 	  logger.info("url ==> 전표 관리");
	 	  
	 	  return "logistics/statementlist";
	   }
	   
	   // 재고 현황
	   @RequestMapping("/inventorystatus")
	   public String inventorystatus(HttpServletRequest req, Model model) {
	      logger.info("url ==> 재고 현황");
	      
	      return "logistics/inventorystatus";
	   }
	   
	   // 재고 이동
	   @RequestMapping("/movewarehouse")
	   public String movewarehouse(HttpServletRequest req, Model model) {
	 	  logger.info("url ==> 재고 이동");
	 	  
	 	  return "logistics/movewarehouse";
	   }
	   
	   // 재고 조정
	   @RequestMapping("/inventoryadjustment")
	   public String inventoryadjustment(HttpServletRequest req, Model model) {
	 	  logger.info("url ==> 재고 조정");
	 	  
	 	  return "logistics/inventoryadjustment";
	   }
	   
	   // 재고 수불부
	   @RequestMapping("/inventorysupply")
	   public String inventorysupply(HttpServletRequest req, Model model) {
	      logger.info("url ==> 재고 수불부");
	      
	      return "logistics/inventorysupply";
	   }
	         
	   // 창고 현황
	   @RequestMapping("/warehouselist")
	   public String warehouselist(HttpServletRequest req, Model model) {
	      logger.info("url ==> 창고 현황");
	      
	      return "logistics/warehouselist";
	   }      
      
      
      
      
}