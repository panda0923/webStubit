package com.bit2015.bitin.vo;

public class AttdNumberVo {
	private Long classNo;
	private Long randomNumber;
	private String createdDate;
	
	public Long getClassNo() {		return classNo;	}
	public Long getRandomNumber() {		return randomNumber;	}
	public String getCreatedDate() {		return createdDate;	}
	
	public void setClassNo(Long classNo) {		this.classNo = classNo;	}
	public void setRandomNumber(Long randomNumber) {		this.randomNumber = randomNumber;	}
	public void setCreatedDate(String createdDate) {		this.createdDate = createdDate;	}
	
	@Override
	public String toString() {
		return "AttdNumberVo [classNo=" + classNo + ", randomNumber="
				+ randomNumber + ", createdDate=" + createdDate + "]";
	}
}
