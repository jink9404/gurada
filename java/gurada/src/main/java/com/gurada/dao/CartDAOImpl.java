package com.gurada.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gurada.domain.CartVO;
import com.gurada.infa.CartDAO;
@Repository("cartDAO")
public class CartDAOImpl implements CartDAO{
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public Integer cartInsert(CartVO vo) {
		
		return mybatis.insert("cart.cartInsert", vo);
	}

	@Override
	public List<CartVO> cartSelect(CartVO vo) {
		
		return mybatis.selectList("cart.cartSelect",vo);
	}

	@Override
	public Integer cartCheck(CartVO vo) {
		
		return mybatis.selectOne("cart.cartCheck",vo);
	}

	@Override
	public Integer cartUpdate(CartVO vo) {
		
		return mybatis.update("cart.cartUpdate",vo);
	}
	
	public int cartDelete(int id) {
		return mybatis.delete("cart.cartDelete",id);
	}

		
}
