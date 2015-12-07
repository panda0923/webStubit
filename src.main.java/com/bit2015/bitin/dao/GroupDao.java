package com.bit2015.bitin.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit2015.bitin.vo.GroupVo;

@Repository
public class GroupDao {
	@Autowired
	SqlSession sqlSession;
	
	
	/***********************************사용안하고 있음
	 * @param groupVo
	 * @return insert성공여부
	 */
	public boolean insertGroup( GroupVo groupVo ) {
		return (1==	sqlSession.insert("group.insert", groupVo));
	}
	/***********************************사용안하고 있음
	 * @param userNo
	 * @param groupNo
	 * @param role
	 */
	public void joinGroup(Long userNo, Long groupNo, String role) {
		HashMap<String, Object> insertMap = new HashMap<String, Object>();
		insertMap.put("userNo", userNo);
		insertMap.put("groupNo",groupNo);
		insertMap.put("role", role);
		sqlSession.insert("group.joinGroup", insertMap);
		//TODO? groupNo 가 유효한가??
	}
}
