package com.bit2015.bitin.api.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit2015.bitin.service.VoteService;
import com.bit2015.bitin.vo.VoteVo;


@Controller("voteAPIController")
@RequestMapping("/api/vote")
public class VoteController {

	@Autowired
	VoteService voteService;
	
	/**
	 * @param map(userId, className, voteTitle, voteContent)
	 * @return map{"message",파라미터가 null일때 발생하는 메세지),("result",success or fail),("data",해당 수업에 학생들의 phoneId) }
	 * 투표를 새로만드는 메소드입니다.
	 * 조윤주 요구
	 * made by 현준.
	 */
	@ResponseBody
	@RequestMapping(value="/enroll")
	public Map<String, Object> insertVote(
			@RequestBody HashMap<String, Object> map ) {
		HashMap<String, Object>retMap = new HashMap<String, Object>();
		System.out.println("control - insertVote  : map : "+map);
		String resultStr = "fail";
		if( map == null){
			retMap.put("message", "모든 파라미터값 null 상태임");
		}else{
			voteService.insertVoteTitleAndContent(map);
			retMap.put("result", resultStr);
			retMap.put("data", voteService.phoneIdListbyUserIdAndClassName(map));
			resultStr = "success"; 
		}	
		return retMap;
	}
	
	/**
	 * @param map(userId)
	 * @return map{"message",파라미터가 null일때 발생하는 메세지),("result",success or fail),("data", 투표리스트) }
	 * 파라미터로 받아오는 아이디에 해당되는 투표리스트를 받아오는 메소드입니다.
	 * 조윤주 요구
	 * made by 현준.
	 */
	@ResponseBody
	@RequestMapping("/list")
	public Map<String, Object> voteList(
			@RequestBody HashMap<String, Object> map) {
		String userId = (String)map.get("userId");
		System.out.println("control - voteList  : String : "+userId);
		List<VoteVo> list = null;
		HashMap<String, Object>retMap = new HashMap<String, Object>();
		String resultStr = "fail";
		if( userId == null){
			retMap.put("message", "userId가 null 상태임");
		}else{
			list = voteService.getVoteList(userId);
			resultStr = "success"; 
			retMap.put("result", resultStr);
			retMap.put("data", list);
		}	
		
		return retMap;
	}
	
	
	/**
	 * @param map(userId)
	 * @return map{"message",파라미터가 null일때 발생하는 메세지),("result",success or fail),("data", 투표리스트) }
	 * 파라미터로 받아오는 아이디에 해당되는 투표리스트를 받아오는 메소드입니다.
	 * 조윤주 요구
	 * made by 현준.
	 * 
	 *            미완성
	 * 
	 */
	@ResponseBody
	@RequestMapping("/voting")
	public Map<String, Object> voting(
			@RequestBody HashMap<String, Object> map){
		HashMap<String, Object>retMap = new HashMap<String, Object>();
		System.out.println("control - voting  : map : "+map);
		String resultStr = "fail";
		
		if( map == null){
			retMap.put("message", "모든 파라미터값 null 상태임");
		}else{
			voteService.insertVoteTitleAndContent(map);
			resultStr = "success"; 
		}	
		retMap.put("result", resultStr);
		retMap.put("data", voteService.phoneIdListbyUserIdAndClassName(map));
		System.out.println(voteService.phoneIdListbyUserIdAndClassName(map));
		return retMap;
	}
}
