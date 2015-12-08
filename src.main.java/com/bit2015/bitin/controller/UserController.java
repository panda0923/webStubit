package com.bit2015.bitin.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit2015.bitin.service.UserService;
import com.bit2015.bitin.vo.UserVo;

@Controller("userController")
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserService userService;
	

	/**
	 * @param userVo (id, password 필수) 
	 * @return 
	 * 성공시 result:success
	 * 실패시 result:fail / message:이유
	 * 
	 * 사실상 로그인 기능은 없고 아이디,비밀번호가 일치하는 유저가 있는지만 확인해줌
	 */
	@ResponseBody
	@RequestMapping(value="/login")
	public Map<String, Object> login(
			@RequestBody UserVo userVo ){
		System.out.println("@userAPIController login : userVo : "+userVo);
		HashMap<String, Object>retMap = new HashMap<String, Object>();
		String resString ="fail";

		boolean loginFlag;
		
		if(userVo== null || userVo.getUserId()==null || userVo.getUserPassword()==null){
			retMap.put("message", "id, password 모두 입력하세요");
		}
		else{
			loginFlag = userService.checkIdAndPassword(userVo);
			if ( loginFlag ==false){
				retMap.put("message", "아이디 비밀번호 오류");
			}
			else{
				resString= "success";
			}
		}
		retMap.put("result", resString);
		return retMap;
	}
	
	@ResponseBody
	@RequestMapping("/join")
	public String join( @ModelAttribute UserVo userVo) {
		System.out.println(userVo);
		
		return "ha";
	}
}
