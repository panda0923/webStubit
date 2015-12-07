package com.bit2015.bitin.vo;

public class TempVo {
	private String className;
	private String userId;
	public String getClassName() {
		return className;
	}
	public String getUserId() {
		return userId;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	@Override
	public String toString() {
		return "TempVo [className=" + className + ", userId=" + userId + "]";
	}
	
	

}
