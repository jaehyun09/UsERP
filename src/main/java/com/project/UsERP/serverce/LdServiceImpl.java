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
import com.project.UsERP.vo.StockSupplyVO;
import com.project.UsERP.vo.StockVO;
import com.project.UsERP.vo.WarehouseVO;
@Service
public class LdServiceImpl implements LdService {

	@Autowired
	LdDAO lddao;

	// 김민수 - 창고 등록
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
		WarehouseVO vo = new WarehouseVO();
		int wareCode = vo.getWare_code();
		
		model.addAttribute("wareCode", wareCode);
		model.addAttribute("warehouseList", list);
	}
	
	// 김민수 - 창고 상세 목록
	@Override
	public void warehouseDetail(HttpServletRequest req, Model model) {
		int ware_code = Integer.parseInt(req.getParameter("ware_code"));
		
		WarehouseVO vo = lddao.warehouseDetail(ware_code);
		
		model.addAttribute("warecode", ware_code);
		model.addAttribute("wareDetailVo", vo);
	}

	// 김민수 - 거래처 목록 조회(검색포함)
	@Override
	public void companyList(HttpServletRequest req, Model model) {
		String compKeyword = req.getParameter("compKeyword");
		
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

	
	// 김민수 - 상품 목록 조회(검색포함)
	@Override
	public void productList(HttpServletRequest req, Model model) {
		String proKeyword = req.getParameter("proKeyword");
		
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

	// 김민수 - 재고 관리 상품 조회
	@Override
	public void selectProduct(HttpServletRequest req, Model model) {
		List<ProductVO> list = lddao.selectProduct();
		
		model.addAttribute("selprolist", list);
	}

	// 김민수 - 재고 관리 창고 조회
	@Override
	public void selectWarehouse(HttpServletRequest req, Model model) {
		List<WarehouseVO> list = lddao.selectWarehouse();
		
		model.addAttribute("selectware", list);
	}

	// 김민수 - 재고 이동 등록, 창고등록(불량품,출고대기), 수불부 내역등록
	@Override
	public void moveWareInsert(HttpServletRequest req, Model model) {
		int startwh = Integer.parseInt(req.getParameter("startwh"));
		int arrivewh = Integer.parseInt(req.getParameter("arrivewh"));
		int prod = Integer.parseInt(req.getParameter("prod"));
		int amount = Integer.parseInt(req.getParameter("amount"));
		String empid = req.getParameter("empid");
		
		// 재고 테이블 여부 확인
		Map<String, Object> stateMap = new HashMap<String, Object>();
		stateMap.put("arrivewh", arrivewh);
		stateMap.put("prod", prod);
		
		// 재고 이동시 재고테이블 없을경우 등록
		StockVO stockVo = new StockVO();
		stockVo.setSto_quantity(amount);
		stockVo.setWare_code(arrivewh);
		stockVo.setPro_code(prod);
		
		// 출발창고 재고변경
		Map<String, Object> minusMap = new HashMap<String, Object>();
		minusMap.put("amount", amount);
		minusMap.put("startwh", startwh);
		minusMap.put("prod", prod);
		
		// 도착창고 재고변경
		Map<String, Object> plusMap = new HashMap<String, Object>();
		plusMap.put("amount", amount);
		plusMap.put("arrivewh", arrivewh);
		plusMap.put("prod", prod);
		
		int stockBadInsert = 0;
		int stoMinusUpdate = 0;
		int stoBadMinusUpdate = 0;
		int stoPlusUpdate = 0;
		int stsuMoveInsert = 0;
		int stsuBadMoveInsert = 0;
		int state = 0;
		
			if (lddao.stockState(stateMap) == null) {
				if(arrivewh >= 2000 && arrivewh<=2999) {
					
					stockBadInsert = lddao.stockBadWare(stockVo);
					if(stockBadInsert == 1) {
						stoBadMinusUpdate = lddao.stoMinusUpdate(minusMap);
						// 재고 이동 재고테이블 수량 가져오기
						Map<String, Object> quantityMap = new HashMap<String, Object>();
						quantityMap.put("startwh", startwh);
						quantityMap.put("prod", prod);
						String stsu_quantity = lddao.getStoQuantity(quantityMap);
						
						StockSupplyVO stockSupplyVO = new StockSupplyVO();
						stockSupplyVO.setStsu_quantity(Integer.parseInt(stsu_quantity));
						stockSupplyVO.setStsu_amount(amount);
						stockSupplyVO.setStsu_startwh(lddao.getStartWareName(startwh));
						stockSupplyVO.setStsu_arrivewh(lddao.getArriveWareName(arrivewh));
						stockSupplyVO.setPro_code(prod);
						stockSupplyVO.setEmp_code(empid);
						
						stsuBadMoveInsert = lddao.stsuMoveInsert(stockSupplyVO);
					}
				}
			}
			
		 else if(lddao.stockState(stateMap) != null) {
				stoMinusUpdate = lddao.stoMinusUpdate(minusMap);
				stoPlusUpdate = lddao.stoPlusUpdate(plusMap);
				
				// 재고 이동 재고테이블 수량 가져오기
				Map<String, Object> quantityMap = new HashMap<String, Object>();
				quantityMap.put("startwh", startwh);
				quantityMap.put("prod", prod);
				String stsu_quantity = lddao.getStoQuantity(quantityMap);
				
				StockSupplyVO stockSupplyVO = new StockSupplyVO();
				stockSupplyVO.setStsu_quantity(Integer.parseInt(stsu_quantity));
				stockSupplyVO.setStsu_amount(amount);
				stockSupplyVO.setStsu_startwh(lddao.getStartWareName(startwh));
				stockSupplyVO.setStsu_arrivewh(lddao.getArriveWareName(arrivewh));
				stockSupplyVO.setPro_code(prod);
				stockSupplyVO.setEmp_code(empid);
				
				stsuMoveInsert = lddao.stsuMoveInsert(stockSupplyVO);
			}
			model.addAttribute("state", state);
			model.addAttribute("stockBadInsert", stockBadInsert);
			model.addAttribute("stoBadMinusUpdate", stoBadMinusUpdate);
			model.addAttribute("stoMinusUpdate",stoMinusUpdate);
			model.addAttribute("stoPlusUpdate", stoPlusUpdate);
			model.addAttribute("stsuMoveInsert", stsuMoveInsert);
			model.addAttribute("stsuBadMoveInsert", stsuBadMoveInsert);
		}

	// 김민수 - 재고 이동 내역
	@Override
	public void moveWarehouseList(HttpServletRequest req, Model model) {
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
		
		cnt = lddao.getMoveWarehouse();
		
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
		
		model.addAttribute("cnt", cnt);
		model.addAttribute("pageNum", pageNum);
		
		if(cnt > 0) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);
			
			List<StockSupplyVO> list = lddao.moveWarehouseList(map);
			model.addAttribute("movelist", list);
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("pageCnt", pageCnt);
			model.addAttribute("pageBlock", pageBlock);
			model.addAttribute("startPage", startPage);
			model.addAttribute("endPage", endPage);
		}
		
	}
}

