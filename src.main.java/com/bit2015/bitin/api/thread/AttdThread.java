package com.bit2015.bitin.api.thread;

import java.util.TimerTask;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit2015.bitin.dao.AttdDao;

@Service
public class AttdThread  extends TimerTask{
	@Autowired
	AttdDao attdDao;
	private Long classNo;
	
	
	
	
	public AttdThread() {
	}


	public AttdThread (Long classNo ) {
		
		this.classNo = classNo;
		System.out.println("출첵시작 timer start ! ");
	}
	

	@Override
	public void run() {
		System.out.println("thread run : classNo : "+classNo);
		attdDao.updateEndAttdViaClassNo(classNo);
	}
	
	
	

}
