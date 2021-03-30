package com.project.UsERP.persistence;

import java.util.List;

import com.project.UsERP.vo.DepartmentVO;
import com.project.UsERP.vo.HrCodeGroupVO;
import com.project.UsERP.vo.HrCodeVO;

public interface HrDAO {

	// 인사 코드 그룹 조회
	public List<HrCodeGroupVO> hrCgList();

	// 인사 코드 조회
	public List<HrCodeVO> hrCList();

	// 부서 조회
	public List<DepartmentVO> depList();

}
