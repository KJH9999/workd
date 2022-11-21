package com.spring.ex.dto;

public class RegistDTO {
	private String email;
	private String name;
	private int slct;
	private int pay;
	private String registday;
	private String expiration;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getslct() {
		return slct;
	}
	public void setslct(int slct) {
		this.slct = slct;
	}
	public int getPay() {
		return pay;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	public String getRegistday() {
		return registday;
	}
	public void setRegistday(String registday) {
		this.registday = registday;
	}
	public String getExpiration() {
		return expiration;
	}
	public void setExpiration(String expiration) {
		this.expiration = expiration;
	}
	
	@Override
	public String toString() {
		return "RegistDTO [email=" + email + ", name=" + name + ", slct=" + slct + ", pay=" + pay + ", registday="
				+ registday + ", expiration=" + expiration + "]";
	}

	
}
