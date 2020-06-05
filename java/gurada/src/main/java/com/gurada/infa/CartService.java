package com.gurada.infa;

import java.util.List;

import com.gurada.domain.CartVO;

public interface CartService {

	public Integer cartInsert(CartVO vo);
	
	public List<CartVO> cartSelect(CartVO vo);
	
	public Integer cartCheck(CartVO vo);
	
	public Integer cartUpdate(CartVO vo);
	
	public int cartDelete(int id); 
}
