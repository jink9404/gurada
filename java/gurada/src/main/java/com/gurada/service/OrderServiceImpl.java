package com.gurada.service;

import java.util.List;

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
	public List<OrderVO> getOrderList(OrderVO vo) {
		return orderDao.selectOrderList(vo);
	}

}
