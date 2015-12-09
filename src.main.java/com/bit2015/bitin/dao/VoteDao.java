package com.bit2015.bitin.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.eclipse.jdt.internal.compiler.ast.ArrayAllocationExpression;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit2015.bitin.vo.VoteVo;

@Repository
public class VoteDao {

	@Autowired
	SqlSession sqlSession;

	public boolean insertVoteTitle(HashMap<String, Object> map) {
		boolean retFlag = false;
		System.out.println("@@voteDao : insertVoteTitle : " + map);
		try {
			retFlag = (1 == sqlSession.insert("vote.setVoteTitle", map));
		} catch (Exception e) {
			System.out.println("@bitin@UserDao - insertVoteTitle exception 발생 !!!!!!!!!!!!!!!!!!!!!!! exception e : " + e);
			e.printStackTrace();
		}
		System.out.println("retFlag : " + retFlag);
		return retFlag;
	}
	public boolean insertVoteContent(HashMap<String, Object> map) {
		boolean retFlag = false;
		System.out.println("@@voteDao : insertVoteContent : " + map);
		try {
			retFlag = (1 == sqlSession.insert("vote.setVoteContent", map));
		} catch (Exception e) {
			System.out.println("@bitin@VoteDao - insertVoteContent exception 발생 !!!!!!!!!!!!!!!!!!!!!!! exception e : " + e);
			e.printStackTrace();
		}
		System.out.println("retFlag : " + retFlag);
		return retFlag;
	}
	public List<String> phoneIdListbyUserIdAndClassName(HashMap<String, Object> map){
		List<String> list = sqlSession.selectList("vote.phoneIdListbyUserIdAndClassName", map);
		return list;
	}
	
	
	
	
	public List<VoteVo> getVoteList(String userId) {
		List<VoteVo> list = null;
		list=sqlSession.selectList("vote.getVoteList", userId);
		System.out.println(list);
		return list;
	}
	
	
	
	
	public Map<String, Object>  voting(HashMap<String, Object> map) {
		boolean retFlag = false;
		HashMap<String, Object>retMap = new HashMap<String, Object>();
		System.out.println("@@voteDao : insertVoteTitle : " + map);
		try {
			retFlag = (1 == sqlSession.insert("vote.setVoteTitle", map));
		} catch (Exception e) {
			System.out.println("@bitin@UserDao - insertVoteTitle exception 발생 !!!!!!!!!!!!!!!!!!!!!!! exception e : " + e);
			e.printStackTrace();
		}
		System.out.println("retFlag : " + retFlag);
		return retMap;
	}
	
	
	
	
	
}
