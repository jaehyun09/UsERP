package com.project.UsERP.persistence;

import com.project.UsERP.vo.WarehouseVO;

public interface LogisticsDAO {

	// 양품창고 등록
	public int insertGoodWare(WarehouseVO vo);
	
	// 불량품창고 등록
	public int insertBadWare(WarehouseVO vo);
	
	// 출고대기창고 등록
	public int insertWaitWare(WarehouseVO vo);
}
