package com.bit2015.bitin.vo;

public class ClassVo {
	private Long classNo;		//SEQ
	private Long groupNo;		//어느 그룹의 수업인가  
	private String className;	// 수업 명
	private String classType;	//미사용가능성.
	
	private String coordName;		//강의실 이름
	private String coordLati;		//강의실 위도
	private String coordLongi;		//강의실 경도

	private String startTime;	//수업 시작시간
	private String endTime;		//수업 종료시간
	
	private String classRef;	//미사용 가능성.

	
	public Long getClassNo() {		return classNo;	}
	public Long getGroupNo() {		return groupNo;	}
	public String getClassName() {		return className;	}
	public String getClassType() {		return classType;	}
	public String getCoordName() {		return coordName;	}
	public String getCoordLati() {		return coordLati;	}
	public String getCoordLongi() {		return coordLongi;	}
	public String getStartTime() {		return startTime;	}
	public String getEndTime() {		return endTime;	}
	public String getClassRef() {		return classRef;	}
	
	public void setClassNo(Long classNo) {		this.classNo = classNo;	}
	public void setGroupNo(Long groupNo) {		this.groupNo = groupNo;	}
	public void setClassName(String className) {		this.className = className;	}
	public void setClassType(String classType) {		this.classType = classType;	}
	public void setCoordName(String coordName) {		this.coordName = coordName;	}
	public void setCoordLati(String coordLati) {		this.coordLati = coordLati;	}
	public void setCoordLongi(String coordLongi) {		this.coordLongi = coordLongi;	}
	public void setStartTime(String startTime) {		this.startTime = startTime;	}
	public void setEndTime(String endTime) {		this.endTime = endTime;	}
	public void setClassRef(String classRef) {		this.classRef = classRef;	}
	
	@Override
	public String toString() {
		return "ClassVo [classNo=" + classNo + ", groupNo=" + groupNo
				+ ", className=" + className + ", classType=" + classType
				+ ", coordName=" + coordName + ", coordLati=" + coordLati
				+ ", coordLongi=" + coordLongi + ", startTime=" + startTime
				+ ", endTime=" + endTime + ", classRef=" + classRef + "]";
	}
	
	
	
	
}
