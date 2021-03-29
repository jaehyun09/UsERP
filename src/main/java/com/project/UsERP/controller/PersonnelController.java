package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.UsERP.serverce.PersonnelServiceImpl;

// 인사 관리
@Controller
public class PersonnelController {
   
   private static final Logger logger = LoggerFactory.getLogger(PersonnelController.class);
   
   @Autowired
   PersonnelServiceImpl service;
   
   // 김은희/조명재 - 기초 등록
   @RequestMapping("/personnelBasicReg")
   public String personnelBasicReg(HttpServletRequest req, Model model) {
      logger.info("url: 기초 등록");
      // 김은희 -인사 코드그룹 목록 
      service.perCgList(req, model);
   // 김은희 -인사 코드 목록
      service.perCList(req, model);
      // 조명재 - 부서 목록
      service.depList(req, model);
      
      return "personnel/personnelBasicReg";
   }
   
   // 김은희 - 기초 등록 - 리액트 인사 코드그룹 등록
      @RequestMapping("/codegroupadd")
      public String codegroupadd(HttpServletRequest req, Model model) {
         logger.info("url: 리액트 인사 코드그룹 등록");

         return "personnel/ajax/codegroup";
      }

   // 김은희 - 기초 등록 - 리액트 인사코드 등록
   @RequestMapping("/codeadd")
   public String codeadd(HttpServletRequest req, Model model) {
      logger.info("url: 리액트 인사코드 등록");

      return "personnel/ajax/code";
   }


   // 조명재 - 기초 등록 - 리액트 부서 등록
   @RequestMapping("/departmentadd")
   public String departmentadd(HttpServletRequest req, Model model) {
      logger.info("url: 리액트 부서 등록");

      return "personnel/ajax/department";
   }
   
   // 조명재 - 인사 발령
   @RequestMapping("/personnelAppointment")
   public String personnelAppointment(HttpServletRequest req, Model model) {
      logger.info("url: 인사 발령");
      
      return "personnel/personnelAppointment";
   }
   
   // 김은희 - 인사 카드
   @RequestMapping("/personnelCard")
   public String personnelCard(HttpServletRequest req, Model model) {
      logger.info("url: 인사 카드");
      
      return "personnel/personnelCard";
   }
  
   // 조명재 - 급여 관리
   @RequestMapping("/personnelSalary")
   public String personnelSalary(HttpServletRequest req, Model model) {
      logger.info("url: 급여 관리");
      
      return "personnel/personnelSalary";
   }
   
}