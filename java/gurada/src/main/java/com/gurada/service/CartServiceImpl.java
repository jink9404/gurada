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
	
	//장바구니 입력
	@Override
	public Integer cartInsert(CartVO vo) {
	return cartDAO.cartInsert(vo);
	
	}

	//장바구니 내역보기
	@Override
	public List<CartVO> cartSelect(CartVO vo, String userId) {
	return cartDAO.cartSelect(vo, userId);
		
	}

	//장바구니 중복체크
	@Override
	public Integer cartCheck(CartVO vo) {
		
		return cartDAO.cartCheck(vo);
	}

	//장바구니 수량 수정
	@Override
	public Integer cartUpdate(CartVO vo) {
		
		return cartDAO.cartUpdate(vo);
	}


	//장바구니 내역 삭제
	public int cartDelete(int id) {
		 
		return cartDAO.cartDelete(id);
	}
	
	public int cartDelete(CartVO vo) {
		return cartDAO.cartDelete(vo);
	}

	@Override
	public void buyProduct(CartVO vo) {
		cartDAO.buyProduct(vo);
	}
}




	



	


