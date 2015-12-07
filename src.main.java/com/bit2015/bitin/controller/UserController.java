package com.bit2015.bitin.controller;

import java.util.HashMap;
import java.util.Map;

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
	
	
	@RequestMapping("/login")
	public String loginWeb( 
			HttpSession session,
			@ModelAttribute UserVo userVo ) {
		if( userVo== null){
			System.out.println("@UserController ERROR : userVo==null");
		}
		else if(userVo.getUserId()==null || userVo.getUserPassword()==null){
			System.out.println("@UserController ERROR : userVo.name or userVo.password ==null");
		}
		else{
			UserVo retUserVo = userService.getUserVoViaIdAndPassword(userVo);
			if( retUserVo == null ) {
				return "redirect:/loginform";
				//로그인실패 - 어차피 modal ajax에서 미리 check 해서 실패 case없음
			}
			else{
				session.setAttribute("authUser", retUserVo);
			}
		}
		Map<String, Object> retMap = new HashMap<String, Object>();
		retMap.put("result","success");
		return "redirect:/index";
	}
	
	@RequestMapping("/logout")
	public String logoutWeb( HttpSession session ) {
		session.removeAttribute( "authUser" );
		session.invalidate();
		return "redirect:/intro";
	}
	
	
}
