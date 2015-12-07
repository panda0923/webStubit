package com.bit2015.bitin.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit2015.bitin.service.UserService;
import com.bit2015.bitin.vo.UserVo;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserService userService;
	
	
	@ResponseBody
	@RequestMapping("/login")
	public String login( 
			HttpSession session,
			@ModelAttribute UserVo userVo ){
		System.out.println("@UserController userVo : "+userVo);
		UserVo retUserVo = userService.getUserVoViaIdAndPassword(userVo);
		if( retUserVo == null ) {
			
		}
		if( userService.checkIdAndPassword(userVo) ){
			System.out.println("true");
		}else {
			System.out.println("false");
		}
		return "HO";
	}
	
	
}
