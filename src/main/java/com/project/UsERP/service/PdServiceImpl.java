package com.project.UsERP.service;

import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.project.UsERP.persistence.PdDAO;
import com.project.UsERP.vo.AccountStatementVO;
import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.ProductVO;
@Service
public class PdServiceImpl implements PdService {
   
   @Autowired
   PdDAO pddao;
   
   // 최유성 - 기초등록
   @Override
   public void purBasicReg(HttpServletRequest req, Model model) {
      
      //구매 거래처 목록
      List<CompanyVO> company =  pddao.purchasingCompanySelect();
      
      //상품 목록
      List<ProductVO> product = pddao.purchasingProductSelect();
      
      model.addAttribute("company", company);
      model.addAttribute("product", product);
      
   }

   // 최유성 - 입고현황
   @Override
   public void purRecStatus(HttpServletRequest req, Model model) {
      
      //구매 거래처 목록
      //List<StockOrderVO> SOlist =  dao.();
      
      //상품 목록
      //List<StockInOrderVO> SIOlist = dao.();

   }
   
   // 이재홍 - 구매현황 - 구매 내역 & 승인 내역
   @Override
   public void purStatus(HttpServletRequest req, Model model) {
      List<AccountStatementVO> list = pddao.buyList();
      model.addAttribute("buy", list);
      
   }
   
   // 이재홍 - 구매현황 - 구매 내역 상세페이지
   @Override
   public void pdContent(HttpServletRequest req, Model model) {
      int num = Integer.parseInt(req.getParameter("accs_code"));

      AccountStatementVO list = pddao.pdStatementDetail(num);

      model.addAttribute("pdContent", list);
   }
   
   // 이재홍 - 구매현황 - 구매 전표 등록
   @Override
   public void insertBuyStatement(HttpServletRequest req, Model model) {
      int price = Integer.parseInt(req.getParameter("accs_price"));
         
         AccountStatementVO vo = new AccountStatementVO();
      
         vo.setAccs_type(Integer.parseInt(req.getParameter("accs_type")));
         vo.setAccs_content(req.getParameter("accs_content"));
         vo.setAccs_price(price);
         vo.setAccs_quantity(Integer.parseInt(req.getParameter("accs_quantity")));
         vo.setAccs_reg_date(new Timestamp(System.currentTimeMillis()));
         vo.setAccs_sum(Integer.parseInt(req.getParameter("accs_sum")));
         vo.setAccs_state(0);
         vo.setEmp_code(req.getParameter("emp_code"));
         vo.setPro_code(Integer.parseInt(req.getParameter("pro_code")));
         vo.setCom_code(Integer.parseInt(req.getParameter("com_code")));
         System.out.println(vo + "vo");
         int insertCnt = pddao.insertBuyStatement(vo);
         
         model.addAttribute("insertCnt", insertCnt);
      
   }

}