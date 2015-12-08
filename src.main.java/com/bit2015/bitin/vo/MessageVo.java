package com.bit2015.bitin.vo;

public class MessageVo {

	
	private int toUserNo;
	private String createdDate;
	private String message;
	private int fromUserNo;
	

	public int getFromUserNo() {
		return fromUserNo;
	}
	public void setFromUserNo(int fromUserNo) {
		this.fromUserNo = fromUserNo;
	}
	public int getToUserNo() {
		return toUserNo;
	}
	public void setToUserNo(int toUserNo) {
		this.toUserNo = toUserNo;
	}
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	@Override
	public String toString() {
		return "MessageVo [fromUserNo=" + fromUserNo + ", toUserNo=" + toUserNo + ", createdDate=" + createdDate
				+ ", message=" + message + "]";
	}

}
