package com.gurada.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gurada.domain.ProductVO;
import com.gurada.infa.ProductDAO;

@Repository("ProductDAO")
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void ProductInsert(ProductVO vo) {
		mybatis.insert("com.gurada.MemberMapper.insert",vo);
		
	}
}

	
	
	
