package com.project.UsERP.serverce;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.project.UsERP.persistence.LogisticsDAOImpl;
import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.ProductVO;
import com.project.UsERP.vo.WarehouseVO;

@Service
public class LogisticsServiceImpl implements LogisticsService {

	@Autowired
	LogisticsDAOImpl dao;

	// 창고 등록
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
			insertCnt = dao.insertGoodWare(vo);
		} else if(wareState == 2) {
			insertCnt = dao.insertBadWare(vo);
		} else if(wareState == 3) {
			insertCnt = dao.insertWaitWare(vo);
		}
		
		model.addAttribute("insertCnt", insertCnt);
		model.addAttribute("wareState", wareState);
		
	}
	
	
	// 창고 목록
	@Override
	public void warehouseList(HttpServletRequest req, Model model) {
		List<WarehouseVO> list = dao.warehouseList();
		WarehouseVO vo = new WarehouseVO();
		int wareCode = vo.getWare_code();
		
		model.addAttribute("warehouseList", list);
		model.addAttribute("wareCode", wareCode);
	}

	// 창고 상세 목록
	@Override
	public void warehouseDetail(HttpServletRequest req, Model model) {
		int code = Integer.parseInt(req.getParameter("code"));
		
		WarehouseVO vo = dao.warehouseDetail(code);
		
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
		
		cnt = dao.getCompanyCnt(compKeyword);
		
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
			
			List<CompanyVO> list = dao.CompanyList(map);
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
		
		cnt = dao.getProductCnt(proKeyword);
		
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
			
			List<ProductVO> list = dao.ProductList(map);
			model.addAttribute("prolist", list);
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("pageCnt", pageCnt);
			model.addAttribute("pageBlock", pageBlock);
			model.addAttribute("startPage", startPage);
			model.addAttribute("endPage", endPage);
			
		}
	}
	
	
	
}
