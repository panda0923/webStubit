package com.bit2015.bitin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.bit2015.bitin.dao.MessageDao;
import com.bit2015.bitin.dao.UserDao;

public class MessageService {

	@Autowired
	MessageDao messageDao;
	
	public List<String>  getMessageList (String userId) {
		List<String> retList = null;
		//TODO : retList 뽑아오는 과정
		retList = messageDao.getMessageList(userId);
		return retList;
	}
}
