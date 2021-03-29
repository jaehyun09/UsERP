package com.project.UsERP.persistence;

import java.util.List;

import com.project.UsERP.vo.DepartmentVO;
import com.project.UsERP.vo.PerCodeGroupVO;
import com.project.UsERP.vo.PerCodeVO;

public interface PersonnelDAO {

	// 김은희 - 인사 코드 그룹 조회
	public List<PerCodeGroupVO> perCgList();

	// 김은희 - 인사 코드 조회
	public List<PerCodeVO> perCList();

	// 조명재 - 부서 조회
	public List<DepartmentVO> depList();

}
