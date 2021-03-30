package com.project.UsERP.serverce;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.project.UsERP.persistence.LdDAO;
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
