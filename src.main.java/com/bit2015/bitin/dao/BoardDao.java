package com.bit2015.bitin.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit2015.bitin.vo.BoardVo;

@Repository
public class BoardDao {
	
	@Autowired
	SqlSession sqlSession;

	public List<BoardVo> getList() {
		List<BoardVo> list = sqlSession.selectList( "board.selectListTemp");
		return list;
	
	}
	
}
