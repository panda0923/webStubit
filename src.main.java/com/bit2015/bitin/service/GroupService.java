package com.bit2015.bitin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit2015.bitin.dao.GroupDao;
import com.bit2015.bitin.vo.GroupVo;


@Service
public class GroupService {
	@Autowired
	GroupDao groupDao;
	
	/***********************************사용안하고 있음
	 * @param groupVo
	 * @return create성공 여부
	 */
	public boolean createGroup( GroupVo groupVo ) {
		if( groupVo.getGroupName()==null ){
			//TODO : 유저이름 받아와야징
			groupVo.setGroupName("Empty Group Name");
		}
		if( groupVo.getGroupType() == null ) {
			groupVo.setGroupType("Default Type");
		}
		
		return (groupDao.insertGroup(groupVo) );
	}
	
	/***********************************사용안하고 있음
	 * @param userNo
	 * @param groupNo
	 * @param role
	 */
	public void joinGroup(Long userNo, Long groupNo, String groupRole) {
		groupDao.joinGroup(userNo, groupNo, groupRole);
	}

}
