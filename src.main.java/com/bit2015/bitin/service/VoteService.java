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
import com.sun.glass.ui.Size;

@Service
public class VoteService {

	@Autowired
	VoteDao voteDao;
	@Autowired
	UtilService utilService;
	
	
	public boolean insertVoteTitleAndContent(  HashMap<String, Object> map) {
		boolean retFlag = false;
//		ArrayList<String> list = new ArrayList<>();
		System.out.println(map.get("voteContent"));
		List<String >voteContList = utilService.transformStringToList((String)map.get("voteContent"));
//		voteContList = (ArrayList<String>) map.get("voteContent");
		System.out.println(map.get("voteContent"));
		retFlag = voteDao.insertVoteTitle(map);
		for( int i = 0 ; i <voteContList.size(); i++){
			voteDao.insertVoteContent(voteContList.get(i));
		}
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
	
	
	public boolean voting(  @RequestBody HashMap<String, Object> map) {
			boolean retFlag= voteDao.voting(map);
			return retFlag;
	}
	
	
	public boolean delete(  int voteNumber) {
		boolean retFlag = (voteDao.deleteVoteTitle(voteNumber) &&  voteDao.deleteVoteContent(voteNumber)   &&   voteDao.deleteVoteAnswer(voteNumber)  );
		return retFlag;
}
	
	
	public List<VoteVo> voteListByVoteNo(int voteNumber){
		List<VoteVo> list = null;
		list = voteDao.voteListByVoteNo(voteNumber);
		return list;
	}
	
}
