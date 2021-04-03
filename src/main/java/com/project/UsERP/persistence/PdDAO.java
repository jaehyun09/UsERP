package com.project.UsERP.persistence;

import java.util.List;

import com.project.UsERP.vo.AccountStatementVO;
import com.project.UsERP.vo.CompanyVO;
import com.project.UsERP.vo.ProductVO;

public interface PdDAO {
   
   // 최유성 - 구매 거래처 목록
   public List<CompanyVO> purchasingCompanySelect();

   // 최유성 - 상품 목록
   public List<ProductVO> purchasingProductSelect();

   // 이재홍 - 구매 현황 - 구매 내역 & 승인 내역
   public List<AccountStatementVO> buyList();
   
   // 이재홍 - 구매 현황 - 구매 전표 상세 페이지
   public AccountStatementVO pdStatementDetail(int num);
   
   // 이재홍 - 구매 현황 -  구매 전표 등록
   public int insertBuyStatement(AccountStatementVO vo);

}