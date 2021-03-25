package com.project.UsERP.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

//인사팀
@Controller
public class PersonnelController {
   private static final Logger logger = LoggerFactory.getLogger(PersonnelController.class);
   
      // 인사 코드관리
      @RequestMapping("/personnelCode")
      public String personnelCode(HttpServletRequest req, Model model) {
         logger.info("url ==> 인사 코드관리");

         return "personnel/personnelCode";
      }
      
      // 인사 발령관리
      @RequestMapping("/personnelAppointment")
      public String personnelAppointment(HttpServletRequest req, Model model) {
         logger.info("url ==> 인사 발령관리");

         return "personnel/personnelAppointment";
      }
      
      // 인사카드 관리
      @RequestMapping("/personnelCard")
      public String personnelCard(HttpServletRequest req, Model model) {
         logger.info("url ==> 인사카드 관리");

         return "personnel/personnelCard";
      }
      
      // 급여 관리
      @RequestMapping("/personnelSalary")
      public String personnelSalary(HttpServletRequest req, Model model) {
         logger.info("url ==> 급여 관리");

         return "personnel/personnelSalary";
      }
      
      // 부서 관리
      @RequestMapping("/personnelDep")
      public String personnelDep(HttpServletRequest req, Model model) {
         logger.info("url ==> 부서 관리");

         return "personnel/personnelDep";
      }
      

}