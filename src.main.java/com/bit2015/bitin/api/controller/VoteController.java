package com.bit2015.bitin.api.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit2015.bitin.service.VoteService;
import com.bit2015.bitin.vo.ClassVo;
import com.bit2015.bitin.vo.UserVo;
import com.bit2015.bitin.vo.VoteVo;

@Controller("voteAPIController")
@RequestMapping("/api/vote")
public class VoteController {
	
	@Autowired
	VoteService voteService;

	@ResponseBody
	@RequestMapping(value="/enroll")
	public Map<String, Object> insertVote(
			@RequestBody HashMap<String, Object> map ) {
		HashMap<String, Object>retMap = new HashMap<String, Object>();
		System.out.println("control - join  : map : "+map);
		String resultStr = "fail";
		
		if( map == null){
			retMap.put("message", "모든 파라미터값 null 상태임");
		}else{
			voteService.insertVoteTitle(map);
			voteService.insertVoteContent(map);
			resultStr = "success"; 
		}	
		retMap.put("result", resultStr);
		retMap.put("data", voteService.phoneIdListbyUserIdAndClassName(map));
		System.out.println(voteService.phoneIdListbyUserIdAndClassName(map));
		return retMap;
	}
	
	
	
//	else{
//	UserVo userVo = new UserVo();
//	VoteVo voteVo = new VoteVo();
//	ClassVo classVo = new ClassVo();
//
//	userVo.setUserId(		(String)map.get("userId")		);
//	voteVo.setVoteTilte(  (String)map.get("voteTilte")      );
//	voteVo.setVoteContent(     (String)map.get("voteContent")     );
//	classVo.setClassName(     (String)map.get("className")     );
//	
	
}
