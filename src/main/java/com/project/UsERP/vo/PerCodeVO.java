package com.project.UsERP.vo;

public class PerCodeVO {
	
	private int per_code;			// 인사코드
	private String per_code_name;	// 인사코드명
	private int per_use_state;		// 사용상태
	private int pcg_code;			// 그룹번호
	PerCodeGroupVO perCodeGroup;
	
	public int getPer_code() {
		return per_code;
	}
	
	public void setPer_code(int per_code) {
		this.per_code = per_code;
	}
	
	public String getPer_code_name() {
		return per_code_name;
	}
	
	public void setPer_code_name(String per_code_name) {
		this.per_code_name = per_code_name;
	}
	
	public int getPer_use_state() {
		return per_use_state;
	}
	
	public void setPer_use_state(int per_use_state) {
		this.per_use_state = per_use_state;
	}

	public int getPcg_code() {
		return pcg_code;
	}

	public void setPcg_code(int pcg_code) {
		this.pcg_code = pcg_code;
	}

	public PerCodeGroupVO getPerCodeGroup() {
		return perCodeGroup;
	}

	public void setPerCodeGroup(PerCodeGroupVO perCodeGroup) {
		this.perCodeGroup = perCodeGroup;
	}
	
}
