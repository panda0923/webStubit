package com.bit2015.bitin.vo;

public class YjQVo {
	private Long qNo;
	
	private String receiverId;
	private String senderId;
	private String qMessage;
	private String pptNo;
	private Long qnaQNo;
	private String time;
	private String lesson;
	private String userName;
	private String className;
	private String createdDate;
	private String toWhoNo;
	private String  fromUserNo;
	private Long classNO;
	
	public Long getClassNO() {
		return classNO;
	}
	public void setClassNO(Long classNO) {
		this.classNO = classNO;
	}
	public String getqMessage() {
		return qMessage;
	}
	public void setqMessage(String qMessage) {
		this.qMessage = qMessage;
	}
	public String getFromUserNo() {
		return fromUserNo;
	}
	public void setFromUserNo(String fromUserNo) {
		this.fromUserNo = fromUserNo;
	}
	public String getToWhoNo() {
		return toWhoNo;
	}
	public Long getQnaQNo() {
		return qnaQNo;
	}
	public void setToWhoNo(String toWhoNo) {
		this.toWhoNo = toWhoNo;
	}
	public void setQnaQNo(Long qnaQNo) {
		this.qnaQNo = qnaQNo;
	}
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public Long getqNo() {		return qNo;	}
	public String getReceiverId() {		return receiverId;	}
	public String getSenderId() {		return senderId;	}
	public String getPptNo() {		return pptNo;	}
	public String getTime() {		return time;	}
	public String getLesson() {		return lesson;	}
	
	public void setqNo(Long qNo) {		this.qNo = qNo;	}
	public void setReceiverId(String receiverId) {		this.receiverId = receiverId;	}
	public void setSenderId(String senderId) {		this.senderId = senderId;	}
	public void setPptNo(String pptNo) {		this.pptNo = pptNo;	}
	public void setTime(String time) {		this.time = time;	}
	public void setLesson(String lesson) {		this.lesson = lesson;	}
	
	@Override
	public String toString() {
		return "YjQVo [qNo=" + qNo + ", receiverId=" + receiverId + ", senderId=" + senderId + ", qMessage=" + qMessage
				+ ", pptNo=" + pptNo + ", qnaQNo=" + qnaQNo + ", time=" + time + ", lesson=" + lesson + ", userName="
				+ userName + ", className=" + className + ", createdDate=" + createdDate + ", toWhoNo=" + toWhoNo
				+ ", fromUserNo=" + fromUserNo + ", classNO=" + classNO + "]";
	}
}
