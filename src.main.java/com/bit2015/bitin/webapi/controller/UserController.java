package com.bit2015.bitin.webapi.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit2015.bitin.service.UserService;
import com.bit2015.bitin.vo.UserVo;


@Controller("/userWebAPIController")
@RequestMapping("/webapi/user")
public class UserController {
	@Autowired
	UserService userService;
	
	/********************************************web에서 아마 사용될것.(bitin에서는 사용됨) 지금은 사용안됨. 
	 * @param userId 
	 * @return 같은 아이디 존재하면 result:fail
	 * 	같은 아이디 없으면 result:success
	 */
	@ResponseBody
	@RequestMapping("/checkid")
	public Map<String, Object> checkId(
			@RequestParam String userId) {
		HashMap<String, Object>retMap = new HashMap<String, Object>();
		String resultStr = "fail";
		
		if( userService.checkExistUserViaId(userId) ){
			retMap.put("message", "same Id 존재함");
		}
		else{
			resultStr = "success";
		}
		retMap.put("result", resultStr);
		return retMap;
	}

	
	/************************************************web에서 아마 사용될것.(bitin에서는 사용됨) 지금은 사용안됨.
	 * @param session , @ModelAttribute UserVo
	 * @param userVo
	 * @return
	 */
//	@RequestMapping("/login-web")
//	public String loginWeb( 
//			HttpSession session,
//			@ModelAttribute UserVo userVo ) {
//		System.out.println("@UserController login-web userVo : "+userVo);
//		if( userVo== null){
//			System.out.println("@UserController ERROR : userVo==null");
//		}
//		else if(userVo.getUserId()==null || userVo.getUserPassword()==null){
//			System.out.println("@UserController ERROR : userVo.name or userVo.password ==null");
//		}
//		else{
//			UserVo retUserVo = userService.getUserVoViaIdAndPassword(userVo);
//			if( retUserVo == null ) {
//				//로그인실패 - 어차피 modal ajax에서 미리 check 해서 실패 case없음
//			}
//			else{
//				session.setAttribute("authUser", retUserVo);
//			}
//		}
//		Map<String, Object> retMap = new HashMap<String, Object>();
//		retMap.put("result","success");
//		return "main/main";
//	}
	

	/************************************************web에서 아마 사용될것.(bitin에서는 사용됨) 지금은 사용안됨.
	 * @param session
	 * @return
	 */
//	@RequestMapping("/logout-web")
//	public String logoutWeb( HttpSession session ) {
//		session.removeAttribute( "authUser" );
//		session.invalidate();
//		return "main/main";
//	}
	
	/************************************************web에서 아마 사용될것.(bitin에서는 사용됨) 지금은 사용안됨.
	 * 아이디,비밀번호 일치 여부 확인해줌
	 * ********************* 안드로이드에서 이걸 썼나 안썼나 기억이 정확히 안나긴 함
	 * @param userVo
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/test")
	public Map<String, Object> Test(
			@ModelAttribute UserVo userVo ){
		Map<String, Object> retMap = new HashMap<String, Object>();
		String resString = "fail";
		boolean loginFlag = userService.checkIdAndPassword(userVo);
		if ( loginFlag ==false){
			System.out.println("bad");
			retMap.put("message", "아이디 비밀번호 오류");
		}
		else{
			System.out.println("good");
			resString= "success";
		}
		retMap.put("result", resString);
		return retMap;
	} 
	
}

