package com.gurada.infa;

import java.util.List;

import com.gurada.domain.OrderVO;

public interface OrderService {
	public abstract List<OrderVO> getOrderList(OrderVO vo);
}
