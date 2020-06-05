package com.gurada.infa;

import java.util.HashMap;
import java.util.List;

import com.gurada.domain.PagingVO;
import com.gurada.domain.ProductVO;

public interface ProductDAO {
	
	//상품수정
	public void productModify(ProductVO vo);
	//상품 재고 수정
	public ProductVO productUpdate(ProductVO vo);
	//상품 등록
	public void ProductInsert(ProductVO vo);

	//상품 리스트
	public abstract List<ProductVO> productSelectList(ProductVO vo);
	public abstract List<ProductVO> productSelectList(HashMap map);
	public abstract int countProduct(ProductVO productVo);
	//상품디테일화면(product-page)
	public ProductVO productDetail(ProductVO vo);
	//상품삭제(관리자페이지)
	public int delete(String name);
	//상품 검색
	public List<ProductVO> productSearch(ProductVO vo);
	
}

