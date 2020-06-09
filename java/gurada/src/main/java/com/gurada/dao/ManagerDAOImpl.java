package com.gurada.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gurada.infa.ManagerDAO;
@Repository
public class ManagerDAOImpl implements ManagerDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	/*
	 *  남성 복 여성 복 총 매출액 가져오기
	 */
	public List getSaleCost() {
		return mybatis.selectList("manager.getSaleCost");
	}
}
