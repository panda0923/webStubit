package com.bit2015.bitin.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit2015.bitin.dao.VoteDao;
import com.bit2015.bitin.vo.VoteVo;

@Service
public class VoteService {

	@Autowired
	VoteDao voteDao;
	
	
	public boolean insertVoteTitle(  HashMap<String, Object> map) {
		boolean retFlag = false;
		retFlag = voteDao.insertVoteTitle(map);
		return retFlag;
	}
	public boolean insertVoteContent(  HashMap<String, Object> map) {
		boolean retFlag = false;
		retFlag = voteDao.insertVoteContent(map);
		return retFlag;
	}
	public List<String> phoneIdListbyUserIdAndClassName( HashMap<String, Object> map){
		List<String> list = new ArrayList<String>();
		list = voteDao.phoneIdListbyUserIdAndClassName(map);
		return list;
	}
}
