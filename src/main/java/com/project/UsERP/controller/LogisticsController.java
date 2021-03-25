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
   
      // 거래처 조회
      @RequestMapping("/accountinquiry")
      public String accountinquiry(HttpServletRequest req, Model model) {
         logger.info("url ==> 거래처 조회");

         return "logistics/accountinquiry";
      }
      
      // 상품 조회
      @RequestMapping("/productinquiry")
      public String productinquiry(HttpServletRequest req, Model model) {
         logger.info("url ==> 상품조회");
         
         return "logistics/productinquiry";
      }
      
      // 재고 현황
      @RequestMapping("/inventorystatus")
      public String inventorystatus(HttpServletRequest req, Model model) {
         logger.info("url ==> 재고 현황");
         
         return "logistics/inventorystatus";
      }
      
      // 전표리스트
      @RequestMapping("/statementlist")
      public String statementlist(HttpServletRequest req, Model model) {
         logger.info("url ==> 전표리스트");
         
         return "logistics/statementlist";
      }
      
      // 재고수불부
      @RequestMapping("/inventorysupply")
      public String inventorysupply(HttpServletRequest req, Model model) {
         logger.info("url ==> 재고수불부");
         
         return "logistics/inventorysupply";
      }
            
      // 창고리스트
      @RequestMapping("/warehouselist")
      public String warehouselist(HttpServletRequest req, Model model) {
         logger.info("url ==> 창고리스트");
         
         return "logistics/warehouselist";
      }      
      
      // 창고이동
      @RequestMapping("/movewarehouse")
      public String movewarehouse(HttpServletRequest req, Model model) {
         logger.info("url ==> 창고이동");
         
         return "logistics/movewarehouse";
      }
      
      // 재고조정
      @RequestMapping("/inventoryadjustment")
      public String inventoryadjustment(HttpServletRequest req, Model model) {
         logger.info("url ==> 재고조정");
         
         return "logistics/inventoryadjustment";
      }
      
      
      // 재고조정
      @RequestMapping("/test2")
      public String test2(HttpServletRequest req, Model model) {
         logger.info("url ==> test2");
         
         return "logistics/test2";
      }
      
      
      
      
}