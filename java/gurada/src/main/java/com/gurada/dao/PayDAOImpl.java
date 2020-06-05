package com.gurada.dao;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gurada.domain.CartVO;
import com.gurada.infa.PayDAO;
@Repository("paydao")
public class PayDAOImpl implements PayDAO{
	@Autowired
	private SqlSessionTemplate mybatis;
	@Override
	public Integer payInsert(CartVO vo) {
	return mybatis.insert("pay.payInsert",vo);	
	
	}

}
