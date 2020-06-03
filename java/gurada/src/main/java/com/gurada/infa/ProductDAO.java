package com.gurada.infa;

import java.util.HashMap;
import java.util.List;

import com.gurada.domain.PagingVO;
import com.gurada.domain.ProductVO;

public interface ProductDAO {
	//상품 등록
	public void ProductInsert(ProductVO vo);

	//상품 리스트
	public abstract List<ProductVO> productSelectList(ProductVO vo);
	
	public abstract List<ProductVO> productSelectList(HashMap map);
	
	public abstract int countProduct(ProductVO productVo);
}

