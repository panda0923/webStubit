package com.bit2015.bitin.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit2015.bitin.service.BoardService;
import com.bit2015.bitin.service.VoteService;
import com.bit2015.bitin.vo.BoardVo;



@Controller("BoardController")
@RequestMapping("/board")
public class BoardController {


	@Autowired
	BoardService boardService;
	
	@RequestMapping("/writeform")
	public String writeForm(){
		return "/board/writeform";
	}
	
	
	
	
	/**
	 * @param model
	 * @return map("listData",게시판글목록을 list에 담고 그거다시 map에 담아서 리턴)
	 */
	@RequestMapping("/list")
	public String list(Model model){
		
		Map<String, Object> map = boardService.listBoard();
		model.addAttribute( "listData", map );
		
		return "/board/list";
	}

	
}
