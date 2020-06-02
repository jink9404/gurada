package com.gurada.infa;

import java.util.List;

import com.gurada.domain.ProductVO;

public interface ProductDAO {
	//상품 등록
	public void ProductInsert(ProductVO vo);
	//상품 목록 검색
	public ProductVO ProductSelect(ProductVO vo);
} 
	
