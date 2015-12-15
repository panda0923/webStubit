package com.bit2015.bitin.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit2015.bitin.vo.QnaQVo;
import com.bit2015.bitin.vo.YjQVo;


@Repository
public class QnaDao {
	@Autowired
	SqlSession sqlSession;
	
	/**
	 * @param qVo ( toWhoNo, fromUserNo, qMessage, classNo, qType, qRef) 필요 
	 * @return isnert 성공하면 true 실패하면 false return
	 */
	public boolean insertQ(QnaQVo qVo) {
		boolean retFlag = false;
		retFlag = (1 == sqlSession.insert("qna.insertQ",qVo) );
		return retFlag;
	}
	
	
	public String listQ(YjQVo yjqVo) {

		String listQ = sqlSession.selectOne("qna.insertQ",yjqVo);
		return listQ;
	}
}
