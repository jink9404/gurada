package com.gurada.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gurada.domain.CartVO;
import com.gurada.infa.PayDAO;
import com.gurada.infa.PayService;
@Service("payservice")
public class PayServiceImpl implements PayService {
	@Autowired
	private PayDAO paydao;
	

	@Override
	public List<CartVO> paySelect(CartVO vo) {
		return paydao.paySelect(vo);				
	}

}
