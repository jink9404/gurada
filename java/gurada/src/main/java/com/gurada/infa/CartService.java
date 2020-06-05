package com.gurada.infa;

import java.util.List;

import com.gurada.domain.CartVO;

public interface CartService {
	//장바구니 입력
	public Integer cartInsert(CartVO vo);
	//장바구니 내역보기
	public List<CartVO> cartSelect(CartVO vo,String userId);
	//장바구니 중복체크
	public Integer cartCheck(CartVO vo);
	//장바구니 수량 수정
	public Integer cartUpdate(CartVO vo);
	//장바구니 내역삭제
	public int cartDelete(int id); 
	
	
}
