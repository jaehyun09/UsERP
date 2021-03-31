package com.project.UsERP.serverce;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.project.UsERP.persistence.LdDAO;
import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.ProductVO;
import com.project.UsERP.vo.StockVO;
import com.project.UsERP.vo.WarehouseVO;
@Service
public class LdServiceImpl implements LdService {

	@Autowired
	LdDAO lddao;

	// 최유성 - 창고 등록
	@Override
	public void insertWarehouse(HttpServletRequest req, Model model) {
		int wareState = Integer.parseInt(req.getParameter("wareState"));
		String warehouseName = req.getParameter("warehouseName");
		String warehouseLoc = req.getParameter("warehouseLoc");
		
		
		WarehouseVO vo = new WarehouseVO();
		vo.setWare_name(warehouseName);
		vo.setWare_location(warehouseLoc);
		
		int insertCnt = 0;
		
		if(wareState == 1) {
			insertCnt = lddao.insertGoodWare(vo);
		} else if(wareState == 2) {
			insertCnt = lddao.insertBadWare(vo);
		} else if(wareState == 3) {
			insertCnt = lddao.insertWaitWare(vo);
		}
		
		model.addAttribute("insertCnt", insertCnt);
		model.addAttribute("wareState", wareState);
		
	}

	// 김민수 - 창고 목록
	@Override
	public void warehouseList(HttpServletRequest req, Model model) {
		List<WarehouseVO> list = lddao.warehouseList();
		
		model.addAttribute("warehouseList", list);
	}
	
	// 김민수 - 창고 상세 목록
	@Override
	public void warehouseDetail(HttpServletRequest req, Model model) {
		int code = Integer.parseInt(req.getParameter("code"));
		
		WarehouseVO vo = lddao.warehouseDetail(code);
		
		model.addAttribute("wareDetailVo", vo);
	}

	// 검색 거래처 목록 조회
	@Override
	public void companyList(HttpServletRequest req, Model model) {
		String compKeyword = req.getParameter("compKeyword");
		
		int pageSize = 10;
		int pageBlock = 3;
		
		int cnt = 0;
		int start = 0;
		int end = 0;
		
		int pageCnt = 0;
		int startPage = 0;
		int endPage = 0;
		
		String pageNum = "";
		int currentPage = 0;
		
		cnt = lddao.getCompanyCnt(compKeyword);
		
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
		
		model.addAttribute("compKeyword", compKeyword);
		model.addAttribute("cnt", cnt);
		model.addAttribute("pageNum", pageNum);
		
		if(cnt > 0) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("compKeyword", compKeyword);
			map.put("start", start);
			map.put("end", end);
			
			List<CompanyVO> list = lddao.CompanyList(map);
			model.addAttribute("complist", list);
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("pageCnt", pageCnt);
			model.addAttribute("pageBlock", pageBlock);
			model.addAttribute("startPage", startPage);
			model.addAttribute("endPage", endPage);
			
		}
		
		
	}

	// 상품 목록 조회
	@Override
	public void productList(HttpServletRequest req, Model model) {
		String proKeyword = req.getParameter("proKeyword");
		
		int pageSize = 10;
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
	}
	
	// 최유성 - 전표관리
	@Override
	public void logStatementList(HttpServletRequest req, Model model) {
		
		//입고내역 미승인
		List<StockVO> SIlist1 = lddao.stockInOrder1();
		
		//입고내역 승인
		List<StockVO> SIlist2 = lddao.stockInOrder2();
		
		//출고내역 미승인
		List<StockVO> SOlist1 = lddao.stockOutOrder1();
		
		//출고내역 승인
		List<StockVO> SOlist2 = lddao.stockOutOrder2();
		
		model.addAttribute("SIlist1", SIlist1);
		model.addAttribute("SOlist1", SOlist1);
		model.addAttribute("SIlist2", SIlist2);
		model.addAttribute("SOlist2", SOlist2);
	}
}
