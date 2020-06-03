package com.gurada.infa;

import java.util.List;

import com.gurada.domain.ProductVO;

public interface ProductDAO {
	//상품 등록
	public void ProductInsert(ProductVO vo);

	//상품 리스트
	public abstract List<ProductVO> productSelectList(ProductVO vo);
	
	//상품디테일화면(product-page)
	
	public ProductVO productDetail(ProductVO vo);
}

