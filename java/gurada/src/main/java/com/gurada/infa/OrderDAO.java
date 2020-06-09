package com.gurada.infa;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.gurada.domain.OrderVO;

public interface OrderDAO {
	//관리자 주문내역 검색
	public abstract List<Map<String, String>> selectOrderList(OrderVO vo);
	
	//마이페이지 주문내역보기
	public abstract List<Map<String, String>> mypageOrder(String userId);
	//페이징
	public abstract List<Map<String, String>> mypageOrder(HashMap map);
	//마이페이지 총 LIST COUNT
	public abstract int mypageCount(String userId);
	//주문취소하기
	public int orderDelete(String id);
}
 