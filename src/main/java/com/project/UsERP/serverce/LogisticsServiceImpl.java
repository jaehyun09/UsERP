package com.project.UsERP.serverce;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.project.UsERP.persistence.LogisticsDAO;
import com.project.UsERP.vo.StockOrderVO;

@Service
public class LogisticsServiceImpl implements LogisticsService {

	@Autowired
	LogisticsDAO dao;

	//전표관리
	@Override
	public void logStatementList(HttpServletRequest req, Model model) {
		
		//입고내역 미승인
		List<StockOrderVO> SIlist1 = dao.stockInOrder1();
		
		//입고내역 승인
		List<StockOrderVO> SIlist2 = dao.stockInOrder2();
		
		//출고내역 미승인
		List<StockOrderVO> SOlist1 = dao.stockOutOrder1();
		
		//출고내역 승인
		List<StockOrderVO> SOlist2 = dao.stockOutOrder2();
		
		model.addAttribute("SIlist1", SIlist1);
		model.addAttribute("SOlist1", SOlist1);
		model.addAttribute("SIlist2", SIlist2);
		model.addAttribute("SOlist2", SOlist2);
	}

	

}
