package com.gurada.infa;

import java.util.List;
import java.util.Map;

import com.gurada.domain.OrderVO;

public interface OrderService {
	public abstract List<Map<String, String>> getOrderList(OrderVO vo);
	
	public abstract List<Map<String, String>> mypageOrder(String userId);
	
	public int orderDelete(String id);
}
