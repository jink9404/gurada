package com.gurada.infa;

import java.util.List;
import java.util.Map;

import com.gurada.domain.OrderVO;

public interface OrderService {
	//관리자 주문내역 검색
	public abstract List<Map<String, String>> getOrderList(OrderVO vo);
	
	//마이페이지 주문내역보기
	public abstract List<Map<String, String>> mypageOrder(String userId);
	
	//마이페이지 주문취소하기
	public int orderDelete(String id);
}
