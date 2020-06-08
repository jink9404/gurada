package com.gurada.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gurada.domain.CartVO;
import com.gurada.domain.OrderVO;
import com.gurada.infa.PayDAO;
@Repository("paydao")
public class PayDAOImpl implements PayDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<CartVO> paySelect(CartVO vo) {
	return mybatis.selectList("pay.paySelect",vo);	
	}

	@Override
	public int payInsert(OrderVO vo) {
		return mybatis.insert("pay.payInsert", vo);
	}
}
