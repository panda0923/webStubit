package com.bit2015.bitin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit2015.bitin.service.MessageService;
import com.bit2015.bitin.service.UserService;

@Controller
public class UserController {

	@Autowired
	MessageService messageService;
	

	@ResponseBody
	@RequestMapping("/messagelist")
	public Map<String, Object> messageList(
			@RequestParam(value = "userId", required=false)String userId	) {

		HashMap<String, Object> retMap = new HashMap<String, Object>();
		List<String> retList = messageService.getMessageList(userId);
		
		retMap.put("result", "success");
		retMap.put("data", retList);
		
		
		/*if( 문제){
			retMap.put("result", "fail");
			retMap.put("message", "실패이유");
		}*/
		
		return retMap;
	}
}
