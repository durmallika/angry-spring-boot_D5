package com.ti.dto;

public class AccountDTO {

	private long acNo;
	private String type;
	private int balance;
	private String description;

	public long getAcNo() {
		return acNo;
	}

	public void setAcNo(long acNo) {
		this.acNo = acNo;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getBalance() {
		return balance;
	}

	public void setBalance(int balance) {
		this.balance = balance;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "AccountDTO [acNo=" + acNo + ", type=" + type + ", balance=" + balance + ", description=" + description
				+ "]";
	}

}
