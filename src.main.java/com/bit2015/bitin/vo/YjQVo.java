package com.bit2015.bitin.vo;

public class YjQVo {
	private Long qNo;
	
	private String receiverId;
	private String senderId;
	private String message;
	private Long pptNo;
	
	private String time;
	private String lesson;
	
	public Long getqNo() {		return qNo;	}
	public String getReceiverId() {		return receiverId;	}
	public String getSenderId() {		return senderId;	}
	public String getMessage() {		return message;	}
	public Long getPptNo() {		return pptNo;	}
	public String getTime() {		return time;	}
	public String getLesson() {		return lesson;	}
	
	public void setqNo(Long qNo) {		this.qNo = qNo;	}
	public void setReceiverId(String receiverId) {		this.receiverId = receiverId;	}
	public void setSenderId(String senderId) {		this.senderId = senderId;	}
	public void setMessage(String message) {		this.message = message;	}
	public void setPptNo(Long pptNo) {		this.pptNo = pptNo;	}
	public void setTime(String time) {		this.time = time;	}
	public void setLesson(String lesson) {		this.lesson = lesson;	}
	
	@Override
	public String toString() {
		return "YjQVo [qNo=" + qNo + ", receiverId=" + receiverId
				+ ", senderId=" + senderId + ", message=" + message
				+ ", pptNo=" + pptNo + ", time=" + time + ", lesson=" + lesson
				+ "]";
	}
}
