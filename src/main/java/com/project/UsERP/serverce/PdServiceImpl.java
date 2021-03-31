package com.project.UsERP.serverce;

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
		List<CompanyVO> Clist =  pddao.purchasingCompanySelect();
		
		//상품 목록
		List<ProductVO> Plist = pddao.purchasingProductSelect();
		
		model.addAttribute("Clist", Clist);
		model.addAttribute("Plist", Plist);
		
	}

	// 최유성 - 입고현황
	@Override
	public void purRecStatus(HttpServletRequest req, Model model) {
		
		//구매 거래처 목록
		//List<StockOrderVO> SOlist =  dao.();
		
		//상품 목록
		//List<StockInOrderVO> SIOlist = dao.();

	}
	
	// 이재홍 - 구매현황 
   @Override
   public void purStatus(HttpServletRequest req, Model model) {
      
      // 구매내역
      List<AccountStatementVO> list = pddao.buyList();
      
      // 판매전표등록
      
      model.addAttribute("buy", list);
         
   }

}
