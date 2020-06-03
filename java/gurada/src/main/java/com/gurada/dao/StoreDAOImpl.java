package com.gurada.dao;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gurada.domain.StoreVO;
import com.gurada.infa.StoreDAO;




@Repository("StoreDAO") 
public class StoreDAOImpl implements StoreDAO{
	@Autowired
	private SqlSessionTemplate mybatis;


	public StoreVO getStore(StoreVO vo) {
		
		return mybatis.selectOne("StoreDAO.getStore", vo);
		

		
	}

}