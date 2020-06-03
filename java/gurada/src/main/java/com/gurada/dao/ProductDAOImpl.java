package com.gurada.dao;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gurada.domain.PagingVO;
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
	
	/*	작성자: 김명진
	 * 	HashMap: 1) key: productVo, value : ProductVO 객체
	 * 			 2) key: pageVo,    value : PagingVO 객체
	 *	return -> gender, category에 해당하는 pruductList 모두
	 */
	@Override
	public List<ProductVO> productSelectList(HashMap map){
		return mybatis.selectList("com.gurada.ProductMapper.selectListPaging", map);
	}
	/*	작성자: 김명진
	 *	return -> gender, category에 해당하는 pruductList 총 갯수
	 */
	@Override
	public int countProduct(ProductVO productVo) {
		return mybatis.selectOne("com.gurada.ProductMapper.countProduct", productVo);
	}
}
