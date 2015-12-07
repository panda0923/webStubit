package com.bit2015.bitin.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit2015.bitin.vo.AttdNumberVo;
import com.bit2015.bitin.vo.AttendanceVo;

@Repository
public class AttdDao {
	@Autowired
	SqlSession sqlSession;
	
	
	
	
	/**
	 * @param attdNumberVo (randomNumber, classNo ) 필수
	 * @return 성공하면 true return
	 */
	public boolean insertAttdNumberVo ( AttdNumberVo attdNumberVo ) {
		boolean retFlag = false;
		retFlag = (1==sqlSession.insert("attd.insertAttdNumberVo", attdNumberVo) );
		return retFlag;
	}
	
	/**
	 * @param attdVo (userNo, classNo, 필수)
	 * @return
	 * 출석 시작할때 attd 출석중 으로 입력
	 */
	public boolean insertStartAttd (AttendanceVo attdVo) {
		boolean retFlag = false;
		retFlag = (1== sqlSession.insert("attd.insertStartAttd",attdVo));
		return retFlag;
	}

	/************ test DONE
	 * @param classNo
	 * @return 지각으로 update된 row 숫자
	 * 변경된 숫자 없으면 -1L return
	 *  * 해당 classNo 의 출첵중을 모두 결석으로 변경
	 */
	public Long updateEndAttdViaClassNo (Long classNo ) {
		Long retLong = -1L;
		System.out.println("@dao : classNo : "+classNo);
		retLong = (long)sqlSession.update("attd.updateEndAtttdViaClassNo" , classNo);
		return retLong;
	}
}
