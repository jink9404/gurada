package com.gurada.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gurada.domain.OrderVO;
import com.gurada.infa.OrderDAO;
@Repository("OrderDAO")
public class OrderDAOImpl implements OrderDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//관리자 주문내역 검색
	@Override
	public List<Map<String,String>> selectOrderList(OrderVO vo) {
		return mybatis.selectList("orderDAO.selectList",vo);
	}
	
	//마이페이지 주문내역 보기
	@Override
	public List<Map<String, String>> mypageOrder(String userId) {
		return mybatis.selectList("orderDAO.mypageOrder",userId);
	}
	
	//마이페이지 주문 취소
	@Override
	public int orderDelete(String id) {
		
		int rs= mybatis.delete("orderDAO.orderDelete",id);
		return rs;
	}
	

}
 