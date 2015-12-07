package com.bit2015.bitin.vo;

public class AttendanceVo {
	private Long userNo;
	private Long classNo;
	private String classDate;
	private String attdStatus;
	private String description;
	public Long getUserNo() {
		return userNo;
	}
	public Long getClassNo() {
		return classNo;
	}
	public String getClassDate() {
		return classDate;
	}
	public String getAttdStatus() {
		return attdStatus;
	}
	public String getDescription() {
		return description;
	}
	public void setUserNo(Long userNo) {
		this.userNo = userNo;
	}
	public void setClassNo(Long classNo) {
		this.classNo = classNo;
	}
	public void setClassDate(String classDate) {
		this.classDate = classDate;
	}
	public void setAttdStatus(String attdStatus) {
		this.attdStatus = attdStatus;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String toString() {
		return "AttendanceVo [userNo=" + userNo + ", classNo=" + classNo
				+ ", classDate=" + classDate + ", attdStatus=" + attdStatus
				+ ", description=" + description + "]";
	}
	
	
	
	

}
