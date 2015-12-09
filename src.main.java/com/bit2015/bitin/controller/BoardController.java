package com.bit2015.bitin.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



@Controller("BoardController")
@RequestMapping("/board")
public class BoardController {

	
	@RequestMapping("/writeform")
	public String writeForm(){
		return "/board/writeform";
	}

	@RequestMapping("/list")
	public String list(){
		return "/board/list";
	}

	
}
