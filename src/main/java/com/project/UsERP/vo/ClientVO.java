package com.project.UsERP.vo;

import java.sql.Timestamp;

public class ClientVO {
	
	private String id;	/* 회원아이디 */
	private String pwd;	/* 비밀번호 */
	private String enabled;	// 권한
    private String authority;	// 등급
	private String name; // 이름 
	private String email; // 이메일 
	private String hp; // 핸드폰 
	private String address;	// 주소
	private Timestamp reg_date; // 가입일
	private String account; // 계좌번호
	private String emailkey; // 이메일 인증
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEnabled() {
		return enabled;
	}
	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getEmailkey() {
		return emailkey;
	}
	public void setEmailkey(String emailkey) {
		this.emailkey = emailkey;
	}
	
}
