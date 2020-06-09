package com.gurada.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gurada.domain.OrderVO;
import com.gurada.domain.PagingVO;
import com.gurada.infa.OrderDAO;
import com.gurada.infa.OrderService;
@Service("OrderService")
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDAO orderDao;

	/*관리자 페이지 주문 리스트를 검색해서 가져온다.*/
	@Override
	public List<Map<String,String>> getOrderList(OrderVO vo) {
		return orderDao.selectOrderList(vo);
	}
	
	//마이페이지 주문내역리스트 보기
	@Override
	public List<Map<String, String>> mypageOrder(String userId) {
		return orderDao.mypageOrder(userId);
	}
	//페이징
	public List<Map<String, String>> mypageOrder(String userId, PagingVO pageVo){
		HashMap map = new HashMap();
		map.put("userId",userId);
		map.put("pagingVO", pageVo);
		return orderDao.mypageOrder(map);
	}
	//LIST COUNT
	public int mypageCount(String userId) {
		return orderDao.mypageCount(userId);
	}
	
	//마이페이지 주문 취소
	public int orderDelete(String id) {
		return orderDao.orderDelete(id);
	}
	

}
