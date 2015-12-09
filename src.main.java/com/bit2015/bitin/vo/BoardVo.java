package com.bit2015.bitin.vo;

public class BoardVo {
	private String classNo;
	private Long baordNo;
	private String title;
	private String content;
	private Long userNo;
	private Long viewCount;
	private String regDate;
	public String getClassNo() {
		return classNo;
	}
	public void setClassNo(String classNo) {
		this.classNo = classNo;
	}
	public Long getBaordNo() {
		return baordNo;
	}
	public void setBaordNo(Long baordNo) {
		this.baordNo = baordNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Long getUserNo() {
		return userNo;
	}
	public void setUserNo(Long userNo) {
		this.userNo = userNo;
	}
	public Long getViewCount() {
		return viewCount;
	}
	public void setViewCount(Long viewCount) {
		this.viewCount = viewCount;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
	@Override
	public String toString() {
		return "BoardVo [classNo=" + classNo + ", baordNo=" + baordNo + ", title=" + title + ", content=" + content
				+ ", userNo=" + userNo + ", viewCount=" + viewCount + ", regDate=" + regDate + "]";
	}



}
