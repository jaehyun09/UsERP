package com.project.UsERP.serverce;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;


import com.project.UsERP.persistence.StDAO;
import com.project.UsERP.vo.AccountStatementVO;
import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.ProductVO;
import com.project.UsERP.vo.StockVO;

@Service
public class StServiceImpl implements StService {

	@Autowired
	StDAO stdao;

	// 최유성 - 기초등록
	@Override
	public void salesBasicReg(HttpServletRequest req, Model model) {
		// 판매 거래처 목록
		List<CompanyVO> Clist = stdao.salesCompanySelect();

		// 상품 목록
		List<ProductVO> Plist = stdao.salesProductSelect();

		model.addAttribute("Clist", Clist);
		model.addAttribute("Plist", Plist);

	}

	// 최유성 - 출고현황
	@Override
	public void salesRecStatus(HttpServletRequest req, Model model) {
		// TODO Auto-generated method stub

	}

	// 이재홍 - 판매현황
	@Override
	public void salesStatus(HttpServletRequest req, Model model) {

		// 판매내역
		List<AccountStatementVO> list = stdao.salesList();

		// 판매전표등록
		// SalesVO vo = new SalesVO();

		// int insertCnt = 0;
		// insertCnt = dao.insertSalesStatement(vo);

		model.addAttribute("sales", list);
		// model.addAttribute("insertCnt", insertCnt);

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
			
			cnt = stdao.getStockCnt(ssKeyword);
			
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
				
				List<StockVO> list = stdao.StockStatusList(map);
				model.addAttribute("stocklist", list);
				model.addAttribute("currentPage", currentPage);
				model.addAttribute("pageCnt", pageCnt);
				model.addAttribute("pageBlock", pageBlock);
				model.addAttribute("startPage", startPage);
				model.addAttribute("endPage", endPage);
				
			}
			
		}
}
