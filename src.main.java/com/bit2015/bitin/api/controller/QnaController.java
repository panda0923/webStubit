package com.bit2015.bitin.api.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit2015.bitin.service.QnaQService;
import com.bit2015.bitin.vo.QnaQVo;
import com.bit2015.bitin.vo.YjQVo;


@Controller("qnaApiController")
@RequestMapping("/api/qna")
public class QnaController {
	@Autowired
	QnaQService qnaQService;
	
	/**
	 * @param preQVo (senderId, receiverId, message, pptNo, lesson, time )
	 * YjQVo (윤주가 보내는 Vo 형태에 맞춰서 받아옴)
	 * qnaQService.transformYjQVoToQnaQVo 를 통해서 서버DB 형태에 맞는 Vo형태로 바꿔줌
	 * (DB에는 다른 형태로 저장되기 때문에 일시적인 Vo 형태임. Service단에서 YjQVo 를 DB에 맞는 형태의 qnaQvo로 바꿔줌)
	 * @return
	 */
	@ResponseBody 
	@RequestMapping("/create-q")
	public Map<String, Object> createQ (
//			@RequestBody YjQVo preQVo  ) {
			@RequestBody HashMap<String, Object> inputMap  ) {
//			@RequestParam()
		System.out.println("create-q :"+inputMap);
		
		HashMap<String, Object> retMap = new HashMap<String, Object>();
		String resultStr = "fail";
		
		if( (inputMap.get("senderId")==null) || (inputMap.get("receiverId")==null) || (inputMap.get("lesson")==null) ){
			retMap.put("message", "무언가 안들어옴");
		}else{
			YjQVo preQVo = new YjQVo();
			preQVo.setSenderId((String)inputMap.get("senderId"));
			preQVo.setReceiverId((String)inputMap.get("receiverId"));
			preQVo.setMessage((String)inputMap.get("message"));
			preQVo.setLesson((String)inputMap.get("lesson"));
			QnaQVo qVo = qnaQService.transformYjQVoToQnaQVo(preQVo);	//윤주가 보내준 Vo형태에서 서버DB에 맞는 Vo형태로 바꿈
			if( qnaQService.insertQ(qVo) ){	//입력성공
				resultStr = "success";
			}else {
				retMap.put("message", "DB 입력 실패 (서버쪽 문제) ");
			}
		}
		
//		if( (preQVo.getSenderId()== null) || (preQVo.getMessage()==null) || (preQVo.getLesson()==null ) ) {
//			retMap.put("message", "무언가 null상태임");
//		}else{
//			QnaQVo qVo = qnaQService.transformYjQVoToQnaQVo(preQVo);	//윤주가 보내준 Vo형태에서 서버DB에 맞는 Vo형태로 바꿈
//			if( qnaQService.insertQ(qVo) ){	//입력성공
//				resultStr = "success";
//			}else {
//				retMap.put("message", "DB 입력 실패 (서버쪽 문제) ");
//			}
//		}
//		
		retMap.put("result", resultStr);
		
		System.out.println("B@QContr retMap : "+retMap);
		return retMap;
	}

}
