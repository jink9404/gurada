package com.gurada.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gurada.domain.CartVO;
import com.gurada.domain.OrderVO;
import com.gurada.domain.ProductVO;
import com.gurada.infa.CartDAO;
import com.gurada.infa.PayDAO;
import com.gurada.infa.PayService;
import com.gurada.infa.ProductDAO;
@Service("payservice")
public class PayServiceImpl implements PayService {
	@Autowired
	private PayDAO paydao;
	@Autowired
	private CartDAO cartdao;
	@Autowired
	private ProductDAO productdao;
	
	@Override
	public List<CartVO> paySelect(CartVO vo) {
		return paydao.paySelect(vo);				
	}

	/*
	 *  트랜잭션
	 *  결제시 gurada_order에 등록
	 *  wishlit에서 장바구니 삭제
	 *  product 상품 재고 줄이기.
	 */
    @Transactional
	public int payInsert(OrderVO vo) throws Exception {
		int result = paydao.payInsert(vo);
		CartVO cVo = new CartVO();
		ProductVO pVo = new ProductVO();
		pVo.setProductId(vo.getProductNo());
		pVo = productdao.productDetail(pVo);
		pVo.setQuantity(pVo.getQuantity()-1);
		if(pVo.getQuantity() < 0)
		{
			throw new Exception();
		}
		cVo.setMemberNo(vo.getMemberNo());
		cVo.setProductId(vo.getProductNo());
		int result2 = cartdao.cartDelete(cVo);
		productdao.productModify(pVo);
		if (result <= 0 || result2 <= 0)
			return 0;
		return 1;
	}
}
