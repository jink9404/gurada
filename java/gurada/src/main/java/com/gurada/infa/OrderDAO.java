package com.gurada.infa;

import java.util.List;

import com.gurada.domain.OrderVO;

public interface OrderDAO {
	public abstract List<OrderVO> selectOrderList(OrderVO vo);
}
