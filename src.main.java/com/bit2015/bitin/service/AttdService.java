package com.bit2015.bitin.service;

import java.util.Timer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit2015.bitin.api.thread.AttdThread;
import com.bit2015.bitin.dao.AttdDao;
import com.bit2015.bitin.vo.AttdNumberVo;
import com.bit2015.bitin.vo.AttendanceVo;


@Service
public class AttdService {
	@Autowired
	AttdDao attdDao;

	/**
	 * @param attdNumberVo (randomNumber, classNo ) 필수
	 * @return 성공하면 true return
	 */
	public boolean insertAttdNumberVo ( AttdNumberVo attdNumberVo ) {
		boolean retFlag = false;
		retFlag = attdDao.insertAttdNumberVo(attdNumberVo);
		return retFlag;
	}
	

	/***********TEST DONE
	 * @param attdVo (userNo, classNo, 필수)
	 * @return
	 * classNo받아서 그 class의 출석 시작. 
	 * 출석 시작할때 attd 출석중 으로 입력
	 */
	public boolean startAttd( AttendanceVo  attdVo ) {
		boolean retFlag = false;
		retFlag = attdDao.insertStartAttd(attdVo);
		return retFlag;
	}
	
	/************ test DONE
	 * @param classNo
	 * @return 지각으로 update된 row 숫자
	 * 변경된 숫자 없으면 -1L return
	 *  * 해당 classNo 의 출첵중을 모두 결석으로 변경
	 */
	public Long endAttd ( Long classNo) {
		Long retLong = -1L;
		retLong = attdDao.updateEndAttdViaClassNo(classNo);
		return retLong;
	}
	
	/*public boolean startAttdTimer ( Long classNo ) {
		boolean retFlag  =false;
		AttdThread attdThread = new AttdThread(classNo);
		Timer timer1 = new Timer();
		timer1.schedule(attdThread, 5000);
		return retFlag;
	}*/
}
