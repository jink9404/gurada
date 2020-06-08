package com.gurada.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gurada.domain.OrderVO;
import com.gurada.infa.OrderDAO;
@Repository("OrderDAO")
public class OrderDAOImpl implements OrderDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	@Override
	public List<OrderVO> selectOrderList(OrderVO vo) {
		return mybatis.selectList("",vo);
	}

}
