package com.bit2015.bitin.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import com.bit2015.bitin.dao.VoteDao;
import com.bit2015.bitin.vo.VoteVo;

@Service
public class VoteService {

	@Autowired
	VoteDao voteDao;
	
	
	public boolean insertVoteTitleAndContent(  HashMap<String, Object> map) {
		boolean retFlag = false;
		retFlag = voteDao.insertVoteTitle(map);
		retFlag = voteDao.insertVoteContent(map);
		return retFlag;
	}
	public List<String> phoneIdListbyUserIdAndClassName( HashMap<String, Object> map){
		List<String> list = new ArrayList<String>();
		list = voteDao.phoneIdListbyUserIdAndClassName(map);
		return list;
	}
	
	
	
	public List<VoteVo> getVoteList(String userId){
		List<VoteVo> list = null;
		list = voteDao.getVoteList(userId);
		return list;
	}
	
	
	public Map<String, Object> voting(  @RequestBody HashMap<String, Object> map) {
		boolean retFlag = false;
		Map<String, Object>retMap = new HashMap<String, Object>();
		retMap = voteDao.voting(map);
		return retMap;
	}
	
	
	
	
}
