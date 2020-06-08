package com.gurada.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gurada.domain.CartVO;
import com.gurada.domain.OrderVO;
import com.gurada.infa.CartDAO;
import com.gurada.infa.PayDAO;
import com.gurada.infa.PayService;
@Service("payservice")
public class PayServiceImpl implements PayService {
	@Autowired
	private PayDAO paydao;
	@Autowired
	private CartDAO cartdao;

	@Override
	public List<CartVO> paySelect(CartVO vo) {
		return paydao.paySelect(vo);				
	}

    @Transactional
	public int payInsert(OrderVO vo) {
		int result = paydao.payInsert(vo);
		CartVO cVo = new CartVO();
		cVo.setMemberNo(vo.getMemberNo());
		cVo.setProductId(vo.getProductNo());
		int result2 = cartdao.cartDelete(cVo);
		if (result <= 0 || result2 <= 0)
			return 0;
		return 1;
	}
}
