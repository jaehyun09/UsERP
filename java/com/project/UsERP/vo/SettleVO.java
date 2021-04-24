package com.project.UsERP.vo;

public class SettleVO {

	private String salesdate;
	private long sum;
	private long totalSales;
	private long costOfSales;
	private long costOfManagement;
	
	public String getSalesdate() {
		return salesdate;
	}

	public void setSalesdate(String salesdate) {
		this.salesdate = salesdate;
	}

	public long getSum() {
		return sum;
	}

	public void setSum(long sum) {
		this.sum = sum;
	}

	public long getTotalSales() {
		return totalSales;
	}

	public void setTotalSales(long totalSales) {
		this.totalSales = totalSales;
	}

	public long getCostOfSales() {
		return costOfSales;
	}

	public void setCostOfSales(long costOfSales) {
		this.costOfSales = costOfSales;
	}

	public long getCostOfManagement() {
		return costOfManagement;
	}

	public void setCostOfManagement(long costOfManagement) {
		this.costOfManagement = costOfManagement;
	}

}
