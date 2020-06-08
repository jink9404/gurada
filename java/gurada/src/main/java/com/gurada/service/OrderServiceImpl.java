package com.gurada.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gurada.domain.OrderVO;
import com.gurada.infa.OrderDAO;
import com.gurada.infa.OrderService;
@Service("OrderService")
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDAO orderDao;

	/*주문 리스트를 가져온다.*/
	@Override
	public List<Map<String,String>> getOrderList(OrderVO vo) {
		return orderDao.selectOrderList(vo);
	}

	@Override
	public List<Map<String, String>> mypageOrder(String userId) {
		return orderDao.mypageOrder(userId);
	}
	
	public int orderDelete(String id) {
		return orderDao.orderDelete(id);
	}
	

}
