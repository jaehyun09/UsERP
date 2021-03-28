package com.project.UsERP.serverce;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.project.UsERP.persistence.LogisticsDAOImpl;
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
		
		model.addAttribute("warehouseList", list);
	}

	// 창고 상세 목록
	@Override
	public void warehouseDetail(HttpServletRequest req, Model model) {
		int code = Integer.parseInt(req.getParameter("code"));
		
		WarehouseVO vo = dao.warehouseDetail(code);
		
		model.addAttribute("wareDetailVo", vo);
	}
	
	
	
}
