package com.project.UsERP.vo;

public class PerCodeGroupVO {
	
	private int pcg_code;			// 그룹번호
	private String pcg_name;		// 그룹명
	private int pcg_use_state;		// 사용상태
	
	public int getPcg_code() {
		return pcg_code;
	}
	
	public void setPcg_code(int pcg_code) {
		this.pcg_code = pcg_code;
	}
	
	public String getPcg_name() {
		return pcg_name;
	}
	
	public void setPcg_name(String pcg_name) {
		this.pcg_name = pcg_name;
	}
	
	public int getPcg_use_state() {
		return pcg_use_state;
	}
	
	public void setPcg_use_state(int pcg_use_state) {
		this.pcg_use_state = pcg_use_state;
	}
	
}
