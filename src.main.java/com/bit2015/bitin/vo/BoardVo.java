package com.bit2015.bitin.vo;

public class BoardVo {
	private String classNo;
	private Long boardNo;
	private String title;
	private String content;
	private Long userNo;
	private Long viewCount;
	private String regDate;
	private String userName;
	
	public String getClassNo() {
		return classNo;
	}
	public void setClassNo(String classNo) {
		this.classNo = classNo;
	}
	public Long getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(Long baordNo) {
		this.boardNo = baordNo;
	}
	public String getTitle() {
		return title;
	}
	public String getuserName() {
		return userName;
	}
	public void setuserName(String userName) {
		this.userName = userName;
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
		return "BoardVo [classNo=" + classNo + ", boardNo=" + boardNo + ", title=" + title + ", content=" + content
				+ ", userNo=" + userNo + ", viewCount=" + viewCount + ", regDate=" + regDate + ", userName=" + userName
				+ "]";
	}
	




}
