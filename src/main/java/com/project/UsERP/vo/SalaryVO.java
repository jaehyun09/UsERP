package com.project.UsERP.vo;

// 급여
public class SalaryVO {
   
   private int sal_code;   // 급여코드
   private int sal_basic;   // 기본급
   private int sal_night;   // 야근수당
   private int sal_over;   // 특근수당
   private int sal_cos;   // 근속수당
   private int sal_or;      // 직책수당
   private int hr_code;   // 인사코드
   private int cm_code;   // 출퇴근기록코드
   HrCodeVO hrCode;      
   CommuteVO commute;
   
   public int getSal_code() {
      return sal_code;
   }
   public void setSal_code(int sal_code) {
      this.sal_code = sal_code;
   }
   public int getSal_basic() {
      return sal_basic;
   }
   public void setSal_basic(int sal_basic) {
      this.sal_basic = sal_basic;
   }
   public int getSal_night() {
      return sal_night;
   }
   public void setSal_night(int sal_night) {
      this.sal_night = sal_night;
   }
   public int getSal_over() {
      return sal_over;
   }
   public void setSal_over(int sal_over) {
      this.sal_over = sal_over;
   }
   public int getSal_cos() {
      return sal_cos;
   }
   public void setSal_cos(int sal_cos) {
      this.sal_cos = sal_cos;
   }
   public int getSal_or() {
      return sal_or;
   }
   public void setSal_or(int sal_or) {
      this.sal_or = sal_or;
   }
   public int getHr_code() {
      return hr_code;
   }
   public void setHr_code(int hr_code) {
      this.hr_code = hr_code;
   }
   public HrCodeVO getHrCode() {
      return hrCode;
   }
   public void setHrCode(HrCodeVO hrCode) {
      this.hrCode = hrCode;
   }
   public int getCm_code() {
      return cm_code;
   }
   public void setCm_code(int cm_code) {
      this.cm_code = cm_code;
   }
   public CommuteVO getCommute() {
      return commute;
   }
   public void setCommute(CommuteVO commute) {
      this.commute = commute;
   }
   
   
}
