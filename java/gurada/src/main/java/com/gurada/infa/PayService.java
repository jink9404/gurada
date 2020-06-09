package com.gurada.infa;

import java.util.List;

import com.gurada.domain.CartVO;
import com.gurada.domain.OrderVO;

public interface PayService {

	public List<CartVO> paySelect(CartVO vo);
	
	public int payInsert(OrderVO vo, int count) throws Exception;
	
	
}
 