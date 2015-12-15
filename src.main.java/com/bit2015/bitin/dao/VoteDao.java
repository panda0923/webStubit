package com.bit2015.bitin.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit2015.bitin.vo.VoteVo;

@Repository
public class VoteDao {

	@Autowired
	SqlSession sqlSession;

	public boolean insertVoteTitle(HashMap<String, Object> map) {
		boolean retFlag = true;
		System.out.println("@@voteDao : insertVoteTitle : " + map);
		try {
//			retFlag = (1 == sqlSession.insert("vote.setVoteTitle", map));
			sqlSession.insert("vote.setVoteTitle", map);
		} catch (Exception e) {
			System.out.println("@bitin@UserDao - insertVoteTitle exception 발생 !!!!!!!!!!!!!!!!!!!!!!! exception e : " + e);
			e.printStackTrace();
		}
		System.out.println("retFlag : " + retFlag);
		return retFlag;
	}
	public boolean insertVoteContent(String voteContent) {
		boolean retFlag = false;
		System.out.println("@@voteDao : insertVoteContent : " + voteContent);
		try {
			retFlag = (1 == sqlSession.insert("vote.setVoteContent", voteContent));
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
		System.out.println("aaaa");
		list=sqlSession.selectList("vote.getVoteList", userId);
		System.out.println("!!!!!!!!!!!!!!!!!" + list);
		return list;
	}
	
	
	
	
	public boolean  voting(HashMap<String, Object> map) {
		boolean retFlag = false;
		try {
			retFlag = (1 == sqlSession.insert("vote.voting", map));
		} catch (Exception e) {
			System.out.println("@bitin@UserDao - insertVoteTitle exception 발생 !!!!!!!!!!!!!!!!!!!!!!! exception e : " + e);
			e.printStackTrace();
		}
		return retFlag;
	}
	
	
	
	
	public boolean  deleteVoteTitle( int voteNumber) {
		boolean retFlag = false;
		try {
			retFlag = (1 == sqlSession.delete("vote.deleteVoteTitle", voteNumber));
		} catch (Exception e) {
			System.out.println("@bitin@VoteDao - deleteVoteTitle exception 발생 !!!!!!!!!!!!!!!!!!!!!!! exception e : " + e);
			e.printStackTrace();
		}
		return retFlag;
	}
	public boolean  deleteVoteContent( int voteNumber) {
		boolean retFlag = false;
		try {
			retFlag = (1 == sqlSession.delete("vote.deleteVoteContent", voteNumber));
		} catch (Exception e) {
			System.out.println("@bitin@VoteDao - deleteVoteContent exception 발생 !!!!!!!!!!!!!!!!!!!!!!! exception e : " + e);
			e.printStackTrace();
		}
		return retFlag;
	}
	public boolean  deleteVoteAnswer( int voteNumber) {
		boolean retFlag = false;
		try {
			retFlag = (1 == sqlSession.delete("vote.deleteVoteAnswer", voteNumber));
		} catch (Exception e) {
			System.out.println("@bitin@VoteDao - deleteVoteAnswer exception 발생 !!!!!!!!!!!!!!!!!!!!!!! exception e : " + e);
			e.printStackTrace();
		}
		return retFlag;
	}
	
	
	public List<VoteVo> voteListByVoteNo(int voteNumber) {
		List<VoteVo> list = null;
		list=sqlSession.selectList("vote.voteListByVoteNo", voteNumber);
		System.out.println(list);
		return list;
	}
	
}
