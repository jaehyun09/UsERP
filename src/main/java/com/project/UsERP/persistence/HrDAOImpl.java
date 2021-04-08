package com.project.UsERP.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.UsERP.vo.AppointHistoryVO;
import com.project.UsERP.vo.DepartmentVO;
import com.project.UsERP.vo.EmployeeVO;
import com.project.UsERP.vo.HrCodeGroupVO;
import com.project.UsERP.vo.HrCodeVO;
import com.project.UsERP.vo.SalaryStatementVO;

@Repository
public class HrDAOImpl implements HrDAO {

	@Autowired
	SqlSession sqlSession;

	// 김은희 - 인사 코드 그룹 조회
	@Override
	public List<HrCodeGroupVO> hrCgList() {
		return sqlSession.selectList("com.project.UsERP.persistence.HrDAO.hrCgList");
	}
	
	// 김은희 - 인사 코드 그룹 조회 상세페이지
	@Override
	public List<HrCodeVO> hrRegDetail(int hcg_code) {
		return sqlSession.selectList("com.project.UsERP.persistence.HrDAO.hrRegDetail", hcg_code);
	}
	
	// 김은희 - 인사 코드 조회
	@Override
	public List<HrCodeVO> hrCList() {
		return sqlSession.selectList("com.project.UsERP.persistence.HrDAO.hrCList");
	}

	// 조명재 - 부서 조회
	@Override
	public List<DepartmentVO> depList() {
		HrDAO hrDao = sqlSession.getMapper(HrDAO.class);
		return hrDao.depList();
	}
	
	
	// 조명재 - 인사 코드 조회 - 직급
	@Override
	public List<HrCodeVO> hrCodePosList() {
		HrDAO hrDao = sqlSession.getMapper(HrDAO.class);
		return hrDao.hrCodePosList();
	}
	
	// 김은희 - 인사 코드 등록
	@Override
	public int hrCodeInsert(HrCodeVO vo) {
		return sqlSession.insert("com.project.UsERP.persistence.HrDAO.hrCodeInsert", vo);
	}

	// 김은희 - 인사 코드 중복확인
	@Override
	public int hrCodeCheck(int hr_code) {
		return sqlSession.selectOne("com.project.UsERP.persistence.HrDAO.hrCodeCheck", hr_code);
	}
	
	// 조명재 - 인사 발령 목록 갯수
	@Override
	public int getAppointmentCnt() {
		HrDAO hrDao = sqlSession.getMapper(HrDAO.class);
		return hrDao.getAppointmentCnt();
	}
	
	// 조명재 - 인사 발령(중메뉴) - 인사 발령 조회
	@Override
	public List<AppointHistoryVO> appointmentList(Map<String, Object> map) {
		HrDAO hrDao = sqlSession.getMapper(HrDAO.class);
		return hrDao.appointmentList(map);
	}
	
	// 조명재 - 인사 발령(중메뉴) - 인사 발령
	@Override
	public int hrAppointmentPro(AppointHistoryVO vo) {
		HrDAO hrDao = sqlSession.getMapper(HrDAO.class);
		return hrDao.hrAppointmentPro(vo);
	}
	
	// 김은희 - 인사카드 조회
	@Override
	public List<EmployeeVO> hrCardList() {
		return sqlSession.selectList("com.project.UsERP.persistence.HrDAO.hrCardList");
	}
	
	// 김은희 - 인사카드 상세페이지 조회
	@Override
	public EmployeeVO hrCardDetail(int emp_code) {
		return sqlSession.selectOne("com.project.UsERP.persistence.HrDAO.hrCardDetail", emp_code);
	}
	
	// 김은희 - 인사카드 등록
	@Override
	public int hrCardInsert(Map<String, Object> map) {
		return sqlSession.insert("com.project.UsERP.persistence.HrDAO.hrCardInsert", map);
	}
	
	// 김은희 - 인사 카드 사번 중복확인
	@Override
	public int codeCheck(int emp_code) {
		return sqlSession.selectOne("com.project.UsERP.persistence.HrDAO.codeCheck", emp_code);
	}
	
	// 김은희 - 인사 코드명 중복확인
	@Override
	public int hrConfirmHrName(String hr_code_name) {
		return sqlSession.selectOne("com.project.UsERP.persistence.HrDAO.hrConfirmHrName", hr_code_name);
	}

	// 조명재 - 휴직자 조회
	@Override
	public List<AppointHistoryVO> hrLeaveList() {
		HrDAO hrDao = sqlSession.getMapper(HrDAO.class);
		return hrDao.hrLeaveList();
	}
	
	// 조명재 - 퇴직자 조회
	@Override
	public List<AppointHistoryVO> hrRetireList() {
		HrDAO hrDao = sqlSession.getMapper(HrDAO.class);
		return hrDao.hrRetireList();
	}
	
	// 조명재 - 급여 내역
	@Override
	public List<SalaryStatementVO> hrSalaryList() {
		HrDAO hrDao = sqlSession.getMapper(HrDAO.class);
		return hrDao.hrSalaryList();
	}
	
	
}
