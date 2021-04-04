package com.project.UsERP.serverce;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.project.UsERP.persistence.LdDAO;
import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.LogisticsStatementVO;
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

	// 김민수 - 거래처 상세 페이지
	@Override
	public void compInfoDetail(HttpServletRequest req, Model model) {
		int com_code = Integer.parseInt(req.getParameter("com_code"));
		
		CompanyVO vo = lddao.companyDetail(com_code);
		
		model.addAttribute("compInfo", vo);
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

	// 김민수 - 재고 조정 재고테이블 수량 가져오기
	@Override
	public void getAdjStock(HttpServletRequest req, Model model) {
		int startwh = Integer.parseInt(req.getParameter("wareh"));
		int prod = Integer.parseInt(req.getParameter("prod"));
		
		Map<String, Object> quantityMap = new HashMap<String, Object>();
		quantityMap.put("startwh", startwh);
		quantityMap.put("prod", prod);
		
		String stsu_quantity = lddao.getStoQuantity(quantityMap);
		
		model.addAttribute("stsu_quantity", stsu_quantity);
		
	}

	// 김민수 - 재고 조정 등록
	@Override
	public void adjNewInsert(HttpServletRequest req, Model model) {
		int prod = Integer.parseInt(req.getParameter("prod"));
		int arrivewh = Integer.parseInt(req.getParameter("wareh"));
		String empid = req.getParameter("empid");
		int amount = Integer.parseInt(req.getParameter("amount"));
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		
		StockSupplyVO stockSupplyVO = new StockSupplyVO();
		stockSupplyVO.setStsu_quantity(quantity);
		stockSupplyVO.setStsu_amount(amount);
		stockSupplyVO.setStsu_arrivewh(lddao.getArriveWareName(arrivewh));
		stockSupplyVO.setPro_code(prod);
		stockSupplyVO.setEmp_code(empid);
		
		int updateCnt = 0;
		int insertCnt = 0;
		
		insertCnt = lddao.adjustmentInsert(stockSupplyVO);
		if(insertCnt == 1) {
			Map<String, Object> plusMap = new HashMap<String, Object>();
			plusMap.put("amount", amount);
			plusMap.put("arrivewh", arrivewh);
			plusMap.put("prod", prod);
			
			updateCnt = lddao.stoPlusUpdate(plusMap);
		}
		
		model.addAttribute("insertCnt", insertCnt);
		model.addAttribute("updateCnt", updateCnt);
		
	}

	// 김민수 - 재고 조정 내역
	@Override
	public void adjustmentList(HttpServletRequest req, Model model) {
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
		
		cnt = lddao.getAdjustment();
		
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
			
			List<StockSupplyVO> list = lddao.adjustmentList(map);
			model.addAttribute("adjlist", list);
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("pageCnt", pageCnt);
			model.addAttribute("pageBlock", pageBlock);
			model.addAttribute("startPage", startPage);
			model.addAttribute("endPage", endPage);
		}
	}

	// 김민수  - 재고 수불부 내역
	@Override
	public void supplyList(HttpServletRequest req, Model model) {
		String start = req.getParameter("start_date");
		String end = req.getParameter("end_date");
		String proname = req.getParameter("proname");
		String pron = lddao.getProCode(proname);
		
		int procode = Integer.parseInt(pron);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("procode", procode);
		map.put("start", start);
		map.put("end", end);
		
		List<StockSupplyVO> list = lddao.stockSupplyList(map);
		model.addAttribute("suplist", list);
		model.addAttribute("start", start);
		model.addAttribute("end", end);
		model.addAttribute("proname", proname);
		model.addAttribute("procode", procode);
	}
	
	// 최유성 - 전표관리
	@Override
	public void ldStatementManagement(HttpServletRequest req, Model model) {
		
		//입고내역 미승인
		List<LogisticsStatementVO> SIlist1 = lddao.stockInOrder1();
		
		//입고내역 승인
		List<LogisticsStatementVO> SIlist2 = lddao.stockInOrder2();
		
		//출고내역 미승인
		List<LogisticsStatementVO> SOlist1 = lddao.stockOutOrder1();
		
		//출고내역 승인
		List<LogisticsStatementVO> SOlist2 = lddao.stockOutOrder2();
		
		model.addAttribute("SIlist1", SIlist1);
		model.addAttribute("SOlist1", SOlist1);
		model.addAttribute("SIlist2", SIlist2);
		model.addAttribute("SOlist2", SOlist2);
	}

	// 최유성 - 입고 전표 승인 액션
	@Override
	public void stockInAction(HttpServletRequest req, Model model) {
		
		//나중에 세션 아이디 추가할수도?////////////////////////////////////////////////
		String emp_code = req.getParameter("emp_code"); //사원번호
		System.out.println("emp_code:"+emp_code);//나중에 세션 아이디로 할수도?
		//////////////////////////////////////////////////////////////////////
		
		int logs_code = Integer.parseInt(req.getParameter("logs_code")); //전표번호
		System.out.println("logs_code:"+logs_code);
		int sto_code = Integer.parseInt(req.getParameter("sto_code")); //재고코드
		System.out.println("sto_code:"+sto_code);
		int logs_quantity = Integer.parseInt(req.getParameter("logs_quantity")); //수량
		System.out.println("logs_quantity:"+logs_quantity);
		int ware_code = Integer.parseInt(req.getParameter("ware_code")); //창고번호
		System.out.println("ware_code:"+ware_code);
		int pro_code = Integer.parseInt(req.getParameter("pro_code")); //상품코드
		System.out.println("pro_code:"+pro_code);
		
		int updateCnt = lddao.stockInAction(logs_code);
		System.out.println("updateCnt:"+updateCnt);
		
		if(updateCnt == 1) { //전표 상태 업데이트 성공시
			if(sto_code == 0) { //재고코드가 존재하지 않으면 인서트
				
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("sto_quantity", logs_quantity);
				map.put("ware_code", ware_code);
				map.put("pro_code", pro_code);
				
				int stockInsertCnt = lddao.stockInsert(map);
				System.out.println("stockInsertCnt:"+stockInsertCnt);
				
				if(stockInsertCnt == 1) { //재고 인서트 성공시 재고 수불부 인서트
					
					//셀렉트문 mapper 이용해서 where절에 상품코드와 창고번호로 재고코드 가져오기
					int newStoCode = lddao.stockCodeSelect(pro_code); //새로 생성된 재고코드
					System.out.println("newStoCode"+newStoCode);
					
					
					Map<String, Object> map2 = new HashMap<String, Object>();
					map2.put("sto_code", newStoCode);
					map2.put("stsu_quantity", logs_quantity);
					map2.put("stsu_amount", logs_quantity);
					map2.put("ware_code", ware_code);
					map2.put("pro_code", pro_code);
					
					map2.put("emp_code", emp_code); //나중에 세션아이디 값을 넣어주자
					
					int stockSupplyInsertCnt1 = lddao.stockSupplyInsert(map2);
					System.out.println("stockSupplyInsertCnt1:"+stockSupplyInsertCnt1);
					
					//재고 수불부까지 인서트 했으면 재고전표에도 null부분인 재고코드를 업데이트 시켜서 넣어주자  
					if(stockSupplyInsertCnt1 == 1) {
						
						Map<String, Object> map3 = new HashMap<String, Object>();
						
						map3.put("logs_code", logs_code);
						map3.put("newStoCode", newStoCode);
						
						int logisticsStatementUpdateCnt = lddao.logisticsStatementUpdate(map3);
						System.out.println("logisticsStatementUpdateCnt:"+logisticsStatementUpdateCnt);
					}
				}
				
			}else { //재고코드가 존재하면 수량 업데이트
				int retrunStoQuantity = lddao.retrunStoQuantity(sto_code); //기존수량
				System.out.println("retrunStoQuantity:"+retrunStoQuantity);
				
				int sto_quantity = logs_quantity + retrunStoQuantity; //기존수량  + 입고수량 => 새로운 총수량
				System.out.println("sto_quantity");
				
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("sto_code", sto_code); //재고코드
				map.put("sto_quantity", sto_quantity); //새수량 넣어주기
				map.put("ware_code", ware_code);
				map.put("pro_code", pro_code);
				
				int stockUpdateCnt = lddao.stockUpdate(map);
				System.out.println("stockUpdateCnt:"+stockUpdateCnt);
				
				if(stockUpdateCnt == 1) { //재고 수량 업데이트 성공시 재고수불부 작성(인서트)
					
					Map<String, Object> map2 = new HashMap<String, Object>();
					map2.put("sto_code", sto_code);
					map2.put("stsu_quantity", sto_quantity); //새수량 넣어주기
					map2.put("stsu_amount", logs_quantity);
					map2.put("ware_code", ware_code);
					map2.put("pro_code", pro_code);
					
					map2.put("emp_code", emp_code); //나중에 세션아이디 값을 넣어주자
					
					int stockSupplyInsertCnt2 = lddao.stockSupplyInsert(map2);
					System.out.println("stockSupplyInsertCnt2:"+stockSupplyInsertCnt2);
					
				}
			}
		}
			model.addAttribute("updateCnt", updateCnt);
	}
	
	// 최유성 - 출고 준비 완료로 상태 변경 - 양품창고에서 출고대기창고로 물품 이동
	@Override
	public void stockOutReady(HttpServletRequest req, Model model) {
		
		int logs_code = Integer.parseInt(req.getParameter("logs_code")); //전표번호
		System.out.println("logs_code:"+logs_code);
		int sto_code = Integer.parseInt(req.getParameter("sto_code")); //재고코드
		System.out.println("sto_code:"+sto_code);
		int logs_quantity = Integer.parseInt(req.getParameter("logs_quantity")); //수량
		System.out.println("logs_quantity:"+logs_quantity);
		int ware_code = Integer.parseInt(req.getParameter("ware_code")); //창고번호
		System.out.println("ware_code:"+ware_code);
		int pro_code = Integer.parseInt(req.getParameter("pro_code")); //상품코드
		System.out.println("pro_code:"+pro_code);
		int emp_code = Integer.parseInt(req.getParameter("emp_code")); //사원번호
		System.out.println("emp_code:"+emp_code);
		
		int updateCnt = 0; //전표 업데이트 cnt
		
		int retrunStoQuantity = lddao.retrunStoQuantity(sto_code); //기존수량
		System.out.println("retrunStoQuantity:"+retrunStoQuantity);
		
		int sto_quantity = retrunStoQuantity - logs_quantity; //기존수량  - 판매수량 = 양품창고에 새로 업데이트할 수량
		System.out.println("sto_quantity:"+sto_quantity);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sto_code", sto_code); //재고코드
		map.put("sto_quantity", sto_quantity); //새수량 넣어주기
		map.put("ware_code", ware_code);
		map.put("pro_code", pro_code);
		
		int stockUpdateCnt = lddao.stockUpdate(map); //양품창고에서 판매수량만큼 재고 감소
		System.out.println("stockUpdateCnt:"+stockUpdateCnt);
		
		if(stockUpdateCnt == 1) {
			
			//출고대기창고 관련  해당 상품에 대한 재고코드와 재고수량 가지고 오기
			StockVO vo = lddao.outReadyStockSelect(pro_code);
			
			if (vo != null) { //해당 재고코드가 있을 시
				
				System.out.println("sto_code:"+vo.getSto_code()+"sto_quantity:"+vo.getSto_quantity());
				int outReadyStoCode = vo.getSto_code();
				int outReadyStoQuantity = vo.getSto_quantity();
				int outReadyWareCode = vo.getWare_code();
				
				int sto_quantity2 = outReadyStoQuantity + logs_quantity; //기존 수량 + 판매 수량 = 출고대기창고의 새로운 수량
				System.out.println("sto_quantity2:"+sto_quantity2);
				
				Map<String, Object> map2 = new HashMap<String, Object>();
				map2.put("sto_code", outReadyStoCode); // 출고대기창고 관련 재고코드
				map2.put("sto_quantity", sto_quantity2); //새로운 수량
				map2.put("ware_code", outReadyWareCode);
				map2.put("pro_code", pro_code);
				
				int stockUpdateCnt2 = lddao.stockUpdate(map2); //출고대기창고에서 판매수량만큼 재고 증가
				System.out.println("stockUpdateCnt2:"+stockUpdateCnt2);
				
				if(stockUpdateCnt2 == 1) {
					
					Map<String, Object> map3 = new HashMap<String, Object>();
					map3.put("sto_code", outReadyStoCode);
					map3.put("stsu_quantity", sto_quantity2); //셀렉트로 가져온 기존 수량
					map3.put("stsu_amount", logs_quantity); //판매수량
					map3.put("ware_code", ware_code);
					map3.put("pro_code", pro_code);
					
					map3.put("emp_code", emp_code); //나중에 세션아이디 값을 넣어주자
					
					//양품창고 -> 출고대기창고 재고수량이동 재고수불부 등록
					int outReadystockSupplyCnt = lddao.outReadystockSupplyInsert(map3);
					System.out.println("stockSupplyInsertCnt2:"+outReadystockSupplyCnt);
					
					if(outReadystockSupplyCnt == 1) {  //재고수불부 등록시 물류전표 상태 업데이트
						
						Map<String, Object> map4 = new HashMap<String, Object>();
						
						map4.put("logs_code", logs_code); //전표번호가 logs_code일때 전표상태를 출고준비완료(2)로 변경
						map4.put("sto_code", outReadyStoCode); //출고대기창고 관련 재고코드로 변경..
						map4.put("ware_code", outReadyWareCode); //출고대기창고 관련 창고번호로 변경
						
						updateCnt = lddao.stockOutReady(map4);
						System.out.println("updateCnt:"+updateCnt);
					}
				}
				
			} else{ //해당 재고코드가 존재하지 않을 시
				
				Map<String, Object> map4 = new HashMap<String, Object>();
				map4.put("sto_quantity", logs_quantity);
				//map4.put("ware_code", ware_code); //새로이 인서트하는 것이라 화면에서 가져온 창고코드는 필요없음
				map4.put("pro_code", pro_code);
				
				int outStockInsertCnt = lddao.outStockInsert(map4);
				System.out.println("outStockInsertCnt:"+outStockInsertCnt);
				
				if(outStockInsertCnt == 1) { //재고 인서트 성공시 재고 수불부 인서트
					
					//셀렉트문 mapper 이용해서 where절에 상품코드와 창고번호로 재고코드 가져오고
					StockVO vo2 = lddao.outStockCodeSelect(pro_code);
					
					int newStoCode = vo2.getSto_code();
					int newWareCode = vo2.getWare_code();
					
					System.out.println("newStoCode:"+newStoCode);
					System.out.println("newWareCode:"+newWareCode);
					
					Map<String, Object> map2 = new HashMap<String, Object>();
					map2.put("sto_code", newStoCode);
					map2.put("stsu_quantity", logs_quantity);
					map2.put("stsu_amount", logs_quantity);
					map2.put("ware_code", newWareCode);
					map2.put("pro_code", pro_code);
					
					map2.put("emp_code", emp_code); //나중에 세션아이디 값을 넣어주자
					
					int outReadystockSupplyCnt = lddao.outReadystockSupplyInsert(map2);
					System.out.println("outReadystockSupplyCnt:"+outReadystockSupplyCnt);
					
					//여기서부터 확인해야 함... 테스트 하자....
					
					//재고 수불부까지 인서트 했으면 재고전표에도 null부분인 재고코드를 업데이트 시켜서 넣어주자  
					if(outReadystockSupplyCnt == 1) {
						
						Map<String, Object> map3 = new HashMap<String, Object>();
						
						map3.put("logs_code", logs_code);
						map3.put("newStoCode", newStoCode);
						
						int logisticsStatementUpdateCnt = lddao.logisticsStatementUpdate(map3);
						System.out.println("logisticsStatementUpdateCnt:"+logisticsStatementUpdateCnt);
						
						if(logisticsStatementUpdateCnt == 1) {  //물류전표 상태 업데이트
							
							Map<String, Object> map5 = new HashMap<String, Object>();
							
							map5.put("logs_code", logs_code); //전표번호가 logs_code일때 전표상태를 출고준비완료(2)로 변경
							map5.put("sto_code", newStoCode); //출고대기창고 관련 재고코드로 변경..
							map5.put("ware_code", newWareCode); //출고대기창고 관련 창고번호로 변경
							
							updateCnt = lddao.stockOutReady(map5);
							System.out.println("updateCnt:"+updateCnt);
						}
					}
				}
				
			}
		}
		model.addAttribute("updateCnt", updateCnt);
	}
	
	// 최유성 - 출고 전표 승인 액션  -- 위에 아직 출고대기창고  관련 재고코드 없을때 재고코드 생성 안했다...
	@Override
	public void stockOutAction(HttpServletRequest req, Model model) {
		
		//나중에 세션 아이디 추가할수도?////////////////////////////////////////////////
		String emp_code = req.getParameter("emp_code"); //사원번호
		System.out.println("emp_code:"+emp_code);//나중에 세션 아이디로 할수도?
		//////////////////////////////////////////////////////////////////////
		
		int logs_code = Integer.parseInt(req.getParameter("logs_code")); //전표번호
		System.out.println("logs_code:"+logs_code);
		int sto_code = Integer.parseInt(req.getParameter("sto_code")); //재고코드
		System.out.println("sto_code:"+sto_code);
		int logs_quantity = Integer.parseInt(req.getParameter("logs_quantity")); //수량
		System.out.println("logs_quantity:"+logs_quantity);
		int ware_code = Integer.parseInt(req.getParameter("ware_code")); //창고번호
		System.out.println("ware_code:"+ware_code);
		int pro_code = Integer.parseInt(req.getParameter("pro_code")); //상품코드
		System.out.println("pro_code:"+pro_code);
		
		int updateCnt = 0; //전표 업데이트 cnt
		
		int retrunStoQuantity = lddao.retrunStoQuantity(sto_code); //기존수량
		System.out.println("retrunStoQuantity:"+retrunStoQuantity);
		
		int sto_quantity = retrunStoQuantity - logs_quantity; //기존수량  - 판매수량  = 새로운 총수량
		System.out.println("sto_quantity:"+sto_quantity);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sto_code", sto_code); //재고코드
		map.put("sto_quantity", sto_quantity); //새수량 넣어주기
		map.put("ware_code", ware_code);
		map.put("pro_code", pro_code);
		
		int stockUpdateCnt = lddao.stockUpdate(map);
		System.out.println("stockUpdateCnt:"+stockUpdateCnt);
		
		if(stockUpdateCnt == 1) { //재고 수량 업데이트 성공시 재고수불부 작성(인서트)
			
			Map<String, Object> map2 = new HashMap<String, Object>();
			map2.put("sto_code", sto_code);
			map2.put("stsu_quantity", sto_quantity); //새수량 넣어주기
			map2.put("stsu_amount", logs_quantity);
			map2.put("ware_code", ware_code);
			map2.put("pro_code", pro_code);
			
			map2.put("emp_code", emp_code); //나중에 세션아이디 값을 넣어주자
			
			int outStockSupplyInsertCnt = lddao.outStockSupplyInsert(map2);
			System.out.println("outStockSupplyInsertCnt:"+outStockSupplyInsertCnt);
			
			if(outStockSupplyInsertCnt == 1) { //재고수불부 등록시 전표 출고완료로 상태 변화
				updateCnt = lddao.stockOutAction(logs_code);
				System.out.println("updateCnt:"+updateCnt);
			}
		}
		model.addAttribute("updateCnt", updateCnt);
	}

}

