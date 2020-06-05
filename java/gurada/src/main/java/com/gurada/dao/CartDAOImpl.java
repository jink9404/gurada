package com.gurada.dao;

import java.util.HashMap;
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
	
	//장바구니에 담기.
	@Override
	public Integer cartInsert(CartVO vo) {
		
		return mybatis.insert("cart.cartInsert", vo);
	}
	
	//각 아이디마다 장바구니 내역 보기
	@Override
	public List<CartVO> cartSelect(CartVO vo,String userId) {
		System.out.println(userId);
		HashMap map = new HashMap();
		map.put("vo", vo);
		map.put("id", userId);
		
		return mybatis.selectList("cart.cartSelect",map);
	}

	//장바구니 중복체크
	@Override
	public Integer cartCheck(CartVO vo) {
		
		return mybatis.selectOne("cart.cartCheck",vo);
	}

	//장바구니 중복시 수량 추가
	@Override
	public Integer cartUpdate(CartVO vo) {
		
		return mybatis.update("cart.cartUpdate",vo);
	}
	
	//장바구니 내역 삭제하기
	public int cartDelete(int id) {
		return mybatis.delete("cart.cartDelete",id);
	}
		
}
