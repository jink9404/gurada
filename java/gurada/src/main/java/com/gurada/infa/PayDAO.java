package com.gurada.infa;

import java.util.List;

import com.gurada.domain.CartVO;

public interface PayDAO {
	public List<CartVO> paySelect(CartVO vo);
}
