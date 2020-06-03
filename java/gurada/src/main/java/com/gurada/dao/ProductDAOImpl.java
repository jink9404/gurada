package com.gurada.dao;

import java.util.*;

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
		mybatis.insert("com.gurada.ProductMapper.insert",vo);
	}
	
	//상품리스트를 가져온다.
	@Override
	public List<ProductVO> productSelectList(ProductVO vo){
		return mybatis.selectList("com.gurada.ProductMapper.selectList", vo);
	}

	@Override
	public ProductVO productDetail(ProductVO vo) {
		return mybatis.selectOne("com.gurada.ProductMapper.selectDetail", vo);
	} 
}
