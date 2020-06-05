package com.gurada.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gurada.domain.CartVO;
import com.gurada.infa.CartDAO;
import com.gurada.infa.CartService;
@Service("cartservice")
public class CartServiceImpl implements CartService{
	@Autowired
	CartDAO cartDAO; 
	
	
	@Override
	public Integer cartInsert(CartVO vo) {
	return cartDAO.cartInsert(vo);
	
	}


	@Override
	public List<CartVO> cartSelect(CartVO vo) {
	return cartDAO.cartSelect(vo);
		
	}


	@Override
	public Integer cartCheck(CartVO vo) {
		
		return cartDAO.cartCheck(vo);
	}


	@Override
	public Integer cartUpdate(CartVO vo) {
		
		return cartDAO.cartUpdate(vo);
	}
	
	public int cartDelete(int id) {
		 
		return cartDAO.cartDelete(id);
	}


}
