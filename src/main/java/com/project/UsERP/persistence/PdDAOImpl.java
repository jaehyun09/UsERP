package com.project.UsERP.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.UsERP.vo.AccountStatementVO;
import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.LogisticsStatementVO;
import com.project.UsERP.vo.ProductVO;
import com.project.UsERP.vo.StockVO;

@Repository
public class PdDAOImpl implements PdDAO {

	@Autowired
	SqlSession sqlSession;

	// 최유성 - 기초등록 - 구매 거래처 목록
	@Override
	public List<CompanyVO> purchasingCompanySelect() {

		return sqlSession.selectList("com.project.UsERP.persistence.PdDAO.purchasingCompanySelect");
	}

	// 강재현 - 기초등록 - 판매 거래처 목록 상세페이지
	public CompanyVO pdcompanyDetail(int com_code) {
		return sqlSession.selectOne("com.project.UsERP.persistence.PdDAO.pdcompanyDetail", com_code);
	}

	// 최유성 - 기초등록 - 상품 목록
	@Override
	public List<ProductVO> purchasingProductSelect() {

		return sqlSession.selectList("com.project.UsERP.persistence.PdDAO.purchasingProductSelect");
	}

	// 김민수 - 검색 재고 현황 갯수 구하기
	@Override
	public int getStockCnt(String ssKeyword) {
		return sqlSession.selectOne("com.project.UsERP.persistence.PdDAO.getStockCnt", ssKeyword);
	}
		
	// 김민수 - 검색 재고 현황 조회(페이징)
	@Override
	public List<StockVO> StockStatusList(Map<String, Object> map) {
		return sqlSession.selectList("com.project.UsERP.persistence.PdDAO.StockStatusList", map);
	}
	
	// 이재홍 - 구매 현황 - 구매 내역 & 승인 내역
	@Override
	public List<AccountStatementVO> buyList() {

		return sqlSession.selectList("com.project.UsERP.persistence.PdDAO.buyList");
	}

	// 이재홍 - 구매 현황 - 구매 전표 상세 페이지
	@Override
	public AccountStatementVO pdStatementDetail(int num) {

		return sqlSession.selectOne("com.project.UsERP.persistence.PdDAO.pdStatementDetail", num);
	}

	// 이재홍 - 구매 현황 - 구매 전표 등록
	@Override
	public int insertBuyStatement(AccountStatementVO vo) {

		return sqlSession.insert("com.project.UsERP.persistence.PdDAO.insertBuyStatement", vo);
	}

	// 최유성 - 입고 현황 - 입고 내역
	@Override
	public List<LogisticsStatementVO> logisticsList() {
		return sqlSession.selectList("com.project.UsERP.persistence.PdDAO.logisticsList");
	}

	// 최유성 - 입고 현황 - 입고 전표 등록 - 회계 전표 내역
	@Override
	public List<AccountStatementVO> buList() {
		return sqlSession.selectList("com.project.UsERP.persistence.PdDAO.buList");
	}

	// 최유성 - 입고 현황 - 입고 전표 등록 - 회계 전표 내역 상세
	@Override
	public AccountStatementVO pdinsertList(int accs_code) {
		return sqlSession.selectOne("com.project.UsERP.persistence.PdDAO.pdinsertList", accs_code);
	}

	// 강재현 - 출고현황 - 출고 전표 등록
	@Override
	public int pdinsertLogsStatement(LogisticsStatementVO vo) {
		return sqlSession.insert("com.project.UsERP.persistence.StDAO.insertLogsStatement", vo);
	}

	// 최유성 - 입고 현황 - 입고 전표 등록시 회계전표 상태코드 변화
	@Override
	public int pdupdatestatement(AccountStatementVO vo1) {
		return sqlSession.update("com.project.UsERP.persistence.StDAO.updatestatement", vo1);
	}
	
	// 최유성 - 창고코드 가져 오기 - 창고타입 양품창고 : 1
    @Override
    public int getWareCode(int ware_type){
      
       return sqlSession.selectOne("com.project.UsERP.persistence.PdDAO.getWareCode",ware_type);
    }
}