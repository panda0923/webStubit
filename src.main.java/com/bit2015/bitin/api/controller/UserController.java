package com.bit2015.bitin.api.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit2015.bitin.service.UserService;
import com.bit2015.bitin.vo.UserVo;

@Controller("userAPIController")
@RequestMapping("/api/user")
public class UserController {
	@Autowired
	UserService userService;
	
	/********************************************
	 * 안되고 있음. 안드로이드쪽 문제인지 서버쪽 문제인지 아직 모름
	 * 
	 * @param userVo (id, name, password 필수 ) (phoneId 필수아님)
	 * @return 성공하면 result:success
	 * 실패하면 result:fail + message:이유
	 * 
	 * userPhoneId = null 이면 " - " 입력해줌
	 */
	@ResponseBody
	@RequestMapping(value="/join")
	public Map<String, Object> join(
			@RequestBody UserVo userVo ) {
		HashMap<String, Object>retMap = new HashMap<String, Object>();
		String resultStr = "fail";
		
		if( userVo == null){
			retMap.put("message", "userVo == null 상태임");
		}
		else if( (userVo.getUserName() ==null) || 
				 (userVo.getUserId()==null) || 
				 (userVo.getUserPassword()==null) ){
			retMap.put("message", "userVo에 입력되지 않은 값이 있음.");
		}
		else{
			if( userService.checkExistUserViaId(userVo.getUserId()) ){
				retMap.put("message", "id 중복됨");
			}
			else if (userService.insertUser(userVo) ){
				resultStr = "success"; 
			}
		}	
		retMap.put("result", resultStr);
		return retMap;
	}
	
	/*****************************
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
	
	
/*	@ResponseBody
	@RequestMapping("/userlist")
	public String userList(Model model) {
		List<UserVo> retUserList = userService.getUserListAll();
		model.addAttribute("userList", retUserList);
		return model+"";
	}*/
	
	/****************************************** 아마 미사용 상태일걸????
	 * web쪽인데 여기에 두는게 맞나 싶음
	 * api라서 여기에 일단 놔두긴 함. 
	 * @param session
	 * @param userVo
	 * @return
	 */
	@RequestMapping("/login-web")
	public String loginWeb( 
			HttpSession session,
			@ModelAttribute UserVo userVo ) {
		System.out.println("@UserController login-web userVo : "+userVo);
		if( userVo== null){
			System.out.println("@UserController ERROR : userVo==null");
		}
		else if(userVo.getUserId()==null || userVo.getUserPassword()==null){
			System.out.println("@UserController ERROR : userVo.name or userVo.password ==null");
		}
		else{
			UserVo retUserVo = userService.getUserVoViaIdAndPassword(userVo);
			if( retUserVo == null ) {
				//로그인실패 - 어차피 modal ajax에서 미리 check 해서 실패 case없음
			}
			else{
				session.setAttribute("authUser", retUserVo);
			}
		}
		Map<String, Object> retMap = new HashMap<String, Object>();
		retMap.put("result","success");
		return "main/main";
	}
	
	/******************************************** 아마 미사용 상태일걸????
	 * @param session
	 * @return
	 */
	@RequestMapping("/logout-web")
	public String logoutWeb( HttpSession session ) {
		session.removeAttribute( "authUser" );
		session.invalidate();
		return "main/main";
	}
	
	/******************************************
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
	
	
	/**
	 * @param groupNo 
	 * @return List<String> 으로 List<"userPhoneId"> return 함
	 *  groupNo의 class안에 있는 유저들의 phone id return 함
	 *  
	 *  받아오는 변수의 이름이 groupNo이긴 한데 classNo로 작동함!!!!
	 */
	@ResponseBody
	@RequestMapping("/phoneidlist-by-groupno")
	public Map<String, Object> getUserPhoneIdListByClassNo(
			@RequestParam(value="groupNo", required=false)Long groupNo ) {
		Map<String, Object> retMap = new HashMap<String, Object>();
		List<String> phoneIdList = userService.getUserPhoneIdListByClassNo(4L);
		
		retMap.put("result", "success");
		retMap.put("data", phoneIdList);
		return retMap;
	}
	

}
