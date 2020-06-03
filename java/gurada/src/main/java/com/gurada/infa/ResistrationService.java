package com.gurada.infa;

import java.util.List;

import com.gurada.domain.ProductVO;

public interface ResistrationService {
	
	void productInsert(ProductVO vo);
	
	public abstract List<ProductVO> getProductlist(ProductVO vo);
	
	public ProductVO getProductDetail(ProductVO vo);
	
	
}
