package com.bit2015.bitin.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class MessageDao {

	
	
	
	
	
	/**
	 *            메세지 Dao 아직 미완성( 기능구현은 다했는데 테스트를 안해봄)
	 */
	
	
	
	@Autowired
	SqlSession sqlSession;
	
	public List<String>  getMessageList (String userId) {
		List<String> retList = null;
		//TODO : retList 뽑아오는 과정
		retList = sqlSession.selectList("message.getMessageList", userId);
		return retList;
	}
	
	
	public List<String>  getSendMessageList (String userId) {
		List<String> retList = null;
		//TODO : retList 뽑아오는 과정
		retList = sqlSession.selectList("message.getSendMessageList", userId);
		return retList;
	}
	
	
	
	public boolean sendMessage (HashMap<String, Object> map){
		boolean retFlag = false;
		retFlag = (1==sqlSession.insert("message.sendMessage", map));
		return retFlag;
	}
	
}
