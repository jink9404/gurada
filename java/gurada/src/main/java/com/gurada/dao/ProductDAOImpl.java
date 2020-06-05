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
	//신 상품 등록(관리자페이지)
	@Override
	public void ProductInsert(ProductVO vo) {
		mybatis.insert("com.gurada.ProductMapper.insert",vo);
	}
	//상품리스트를 가져온다.
	@Override
	public List<ProductVO> productSelectList(ProductVO vo){
		return mybatis.selectList("com.gurada.ProductMapper.selectList", vo);
	}
	/*	
	 * 	HashMap: 1) key: productVo, value : ProductVO 객체
	 * 			 2) key: pageVo,    value : PagingVO 객체
	 *	return -> gender, category에 해당하는 pruductList 모두
	 */
	@Override
	public List<ProductVO> productSelectList(HashMap map){
		return mybatis.selectList("com.gurada.ProductMapper.selectListPaging", map);
	}
	/*	
	 *	return -> gender, category에 해당하는 pruductList 총 갯수
	 */
	@Override
	public int countProduct(ProductVO productVo) {
		return mybatis.selectOne("com.gurada.ProductMapper.countProduct", productVo);
	}
	//카테고리 화면에서 id값과 name값으로 상품디테일 페이지로 전환
	@Override
	public ProductVO productDetail(ProductVO vo) {
		return mybatis.selectOne("com.gurada.ProductMapper.selectDetail", vo);
	} 
	//상품 리스트 페이지(관리자페이지)상품 삭제
	   @Override
	   public int delete(String name) {
	      return mybatis.delete("com.gurada.ProductMapper.delete",name);
	   }
	//상품리스트 페이지에서 재고수량 수정
	@Override
	public ProductVO productUpdate(ProductVO vo) {
		return mybatis.selectOne("com.gurada.ProductMapper.update",vo);
	}
	//상품리스트페이지에서 재고수량하기 위한 페이지 전환
	@Override
	public void productModify(ProductVO vo) {
		mybatis.update("com.gurada.ProductMapper.modify",vo);
	}
	//상품검색(관리자페이지)
	@Override
	public List<ProductVO> productSearch(ProductVO vo) {
		return mybatis.selectList("com.gurada.ProductMapper.search",vo);
	}
}
