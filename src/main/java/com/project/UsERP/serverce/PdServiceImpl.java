package com.project.UsERP.serverce;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.project.UsERP.persistence.LdDAO;
import com.project.UsERP.persistence.PdDAO;
import com.project.UsERP.vo.AccountStatementVO;
import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.LogisticsStatementVO;
import com.project.UsERP.vo.ProductVO;
import com.project.UsERP.vo.StockVO;
@Service
public class PdServiceImpl implements PdService {
	
	@Autowired
	PdDAO pddao;
	
	@Autowired
	LdDAO lddao;
	
	// 최유성 - 기초등록
	@Override
	public void pdBasicReg(HttpServletRequest req, Model model) {
		
		//구매 거래처 목록
		List<CompanyVO> Clist =  pddao.pdCompanySelect();
		
		//상품 목록
		List<ProductVO> Plist = pddao.pdProductSelect();
		
		model.addAttribute("Clist", Clist);
		model.addAttribute("Plist", Plist);
		
		
		//////////////////////////////////////
		/*
		String proKeyword = req.getParameter("proKeyword"); //
		
		int pageSize = 15;
		int pageBlock = 3;
		
		int cnt = 0;
		int start = 0;
		int end = 0;
		
		int pageCnt = 0;
		int startPage = 0;
		int endPage = 0;
		
		String pageNum = "";
		int currentPage = 0;
		
		cnt = lddao.getProductCnt(proKeyword);
		
		pageNum = req.getParameter("pageNum");
		
		if(pageNum == null) {
			pageNum = "1";
		}
		
		currentPage = Integer.parseInt(pageNum);
		pageCnt = (cnt / pageSize) + (cnt % pageSize > 0 ? 1 : 0);
		start = (currentPage - 1) * pageSize + 1;
		end = start + pageSize - 1;
		
		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if(currentPage % pageBlock == 0 ) startPage -= pageBlock;
		
		endPage =  startPage + pageBlock - 1;
		if(endPage > pageCnt) endPage = pageCnt;
		
		model.addAttribute("proKeyword", proKeyword);
		model.addAttribute("cnt", cnt);
		model.addAttribute("pageNum", pageNum);
		
		if(cnt > 0) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("proKeyword", proKeyword);
			map.put("start", start);
			map.put("end", end);
			
			List<ProductVO> list = lddao.ProductList(map);
			model.addAttribute("prolist", list);
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("pageCnt", pageCnt);
			model.addAttribute("pageBlock", pageBlock);
			model.addAttribute("startPage", startPage);
			model.addAttribute("endPage", endPage);
			
		}
		*/
		//////////////////////////////////////////
	}

	// 최유성 - 입고현황
	@Override
	public void pdRecStatus(HttpServletRequest req, Model model) {
		
		//입고 내역
		List<LogisticsStatementVO> SIlist =  pddao.pdStockInOrder();
		
		//회계전표 승인내역
		List<AccountStatementVO> AList = pddao.AccountStatement();
		
		//입고 전표등록

		model.addAttribute("SIlist", SIlist);
		model.addAttribute("AList", AList);
	}
	
	// 이재홍 - 구매현황 
   @Override
   public void purStatus(HttpServletRequest req, Model model) {
      
      // 구매내역
      List<AccountStatementVO> list = pddao.buyList();
      
      // 판매전표등록
      
      model.addAttribute("buy", list);
         
   }
   
   	// 최유성 - 입고 내역 상세 페이지
	@Override
	public void pdRecStatusAjax(HttpServletRequest req, Model model) {
		
		int logs_code = Integer.parseInt(req.getParameter("logs_code")); //물류전표번호
		System.out.println("logs_code:"+logs_code);
		
		LogisticsStatementVO vo = lddao.getLdDetail(logs_code); //where절에 전표번호 넣어서 거래처와 상품 정보들 가져오기
		
		model.addAttribute("vo", vo);
	}

	// 최유성 - 입고 전표 등록
	@Override
	public void pdRecStatusAjax2(HttpServletRequest req, Model model) {
		
		int accs_code = Integer.parseInt(req.getParameter("accs_code")); //회계전표번호
		System.out.println("accs_code:"+accs_code);
		
		AccountStatementVO vo = pddao.getAccountStatement(accs_code);
	}
	
	// 김민수 - 재고 현황(검색포함)
	@Override
	public void inventoryStatusList(HttpServletRequest req, Model model) {
		String ssKeyword = req.getParameter("ssKeyword");
		
		int pageSize = 15;
		int pageBlock = 3;
		
		int cnt = 0;
		int start = 0;
		int end = 0;
		
		int pageCnt = 0;
		int startPage = 0;
		int endPage = 0;
		
		String pageNum = "";
		int currentPage = 0;
		
		cnt = lddao.getStockCnt(ssKeyword);
		
		pageNum = req.getParameter("pageNum");
		
		if(pageNum == null) {
			pageNum = "1";
		}
		
		currentPage = Integer.parseInt(pageNum);
		pageCnt = (cnt / pageSize) + (cnt % pageSize > 0 ? 1 : 0);
		start = (currentPage - 1) * pageSize + 1;
		end = start + pageSize - 1;
		
		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if(currentPage % pageBlock == 0 ) startPage -= pageBlock;
		
		endPage =  startPage + pageBlock - 1;
		if(endPage > pageCnt) endPage = pageCnt;
		
		model.addAttribute("ssKeyword", ssKeyword);
		model.addAttribute("cnt", cnt);
		model.addAttribute("pageNum", pageNum);
		
		if(cnt > 0) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("ssKeyword", ssKeyword);
			map.put("start", start);
			map.put("end", end);
			
			List<StockVO> list = lddao.StockStatusList(map);
			model.addAttribute("stocklist", list);
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("pageCnt", pageCnt);
			model.addAttribute("pageBlock", pageBlock);
			model.addAttribute("startPage", startPage);
			model.addAttribute("endPage", endPage);
			
		}
		
	}

}
