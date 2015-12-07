package com.bit2015.bitin.api.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit2015.bitin.service.GroupService;
import com.bit2015.bitin.vo.GroupVo;

@Controller("groupAPIController")
@RequestMapping("/api/group")
public class GroupController {
	@Autowired
	GroupService groupService;
	
	/***********************************사용안하고 있음
	 * @param groupVo 
	 * @return 
	 * 성공시 result:success
	 * 실패시 result:fail / message:이유
	 */
	@ResponseBody
	@RequestMapping(value="/create")
	public Map<String, Object> createGroup(
			@RequestBody GroupVo groupVo ) {
		HashMap<String, Object>retMap = new HashMap<String, Object>();
		String resultStr = "fail";
		
		if( groupVo==null) {
			retMap.put("message", "groupVo== null 인 상태");
		}
		else {
			if(	groupService.createGroup(groupVo) ){
				resultStr = "success";
			}
		}
		retMap.put("result", resultStr);
		return retMap;
	} 
	
	/******************************************** 사용 안함 
	 * user를 group에 가입시킴
	 */
	@ResponseBody
	@RequestMapping("/join-group")
	public String JoinGroup( 
			@RequestParam(value="groupNo", required=true)Long groupNo,
			@RequestParam(value="userNo", required=true)Long userNo,
			@RequestParam(value="role", required=false)String groupRole ) {
		
		System.out.println("@MainController joingroup");
		System.out.println("groupNo : "+groupNo);
		System.out.println("userNo : "+userNo);
		System.out.println("role : "+groupRole);
		
		//groupUserService.joinGroup(userNo, groupNo, role);
		
		
		return "redirect:/main";
	}

}
