package com.gl.crudApplication.bean;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Company {
	@Id
	private Long companyId;
	private String  companyName;
	private Double sharePrice;
	public Company() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Company(Long companyId, String companyName, Double sharePrice) {
		super();
		this.companyId = companyId;
		this.companyName = companyName;
		this.sharePrice = sharePrice;
	}
	public Long getCompanyId() {
		return companyId;
	}
	public void setCompanyId(Long companyId) {
		this.companyId = companyId;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public Double getSharePrice() {
		return sharePrice;
	}
	public void setSharePrice(Double sharePrice) {
		this.sharePrice = sharePrice;
	}
	@Override
	public String toString() {
		return "Company [companyId=" + companyId + ", companyName=" + companyName + ", sharePrice=" + sharePrice + "]";
	}
	

}
