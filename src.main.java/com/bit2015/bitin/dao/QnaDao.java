package com.bit2015.bitin.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.eclipse.jdt.internal.compiler.ast.SynchronizedStatement;
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
		System.out.println("qna다오 가 실행됏나?");
		retFlag = (1 == sqlSession.insert("qna.insertQ",qVo) );
		System.out.println("qna다오 가 실행됏나?");
		return retFlag;
	}
	
	
	public List<YjQVo> listQ(YjQVo yjqVo) {
		List<YjQVo> retList = null;
		System.out.println("조윤주");
		System.out.println(yjqVo);
		retList = sqlSession.selectList("qna.listQ",yjqVo);
		System.out.println("조윤주2");
		
		
		return retList;
	}
	
	
	
	public void deleteQ(YjQVo yjqVo) {
		List<YjQVo> retList = null;
		System.out.println("조윤주");
		System.out.println(yjqVo);
		sqlSession.delete("qna.deleteQ",yjqVo);
		System.out.println("조윤주2");

	}
}
