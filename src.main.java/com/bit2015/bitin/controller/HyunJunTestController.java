package com.bit2015.bitin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit2015.bitin.service.AttdService;
import com.bit2015.bitin.service.ClassService;
import com.bit2015.bitin.service.MessageService;
import com.bit2015.bitin.service.UserService;
import com.bit2015.bitin.service.UtilService;

@Controller
@RequestMapping("/hello")
public class HyunJunTestController {

	
	@Autowired
	AttdService attdService;
	@Autowired
	UtilService util;
	@Autowired
	ClassService classService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	MessageService messageService;
	
	@ResponseBody
	@RequestMapping("ck")
	public String Testttt() {
//		classService.getStudentPhoneIdListByUserName("iron");
		return "Ha";
	}
	
	@ResponseBody
	@RequestMapping("/main")
	public String TesterMain( ) {
		  
		System.out.println("test!!!!!!");
//		System.out.println( messageService.sendMessage("lsl") );

		
		return "aBC!";
	}
}
