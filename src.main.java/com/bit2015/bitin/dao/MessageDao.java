package com.bit2015.bitin.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

public class MessageDao {

	@Autowired
	SqlSession sqlSession;
	
	public List<String>  getMessageList (String userId) {
		List<String> retList = null;
		//TODO : retList 뽑아오는 과정
		retList = sqlSession.selectList("user.getMessageList", userId);
		return retList;
	}
}
