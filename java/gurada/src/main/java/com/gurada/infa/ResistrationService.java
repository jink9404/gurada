package com.gurada.infa;

import java.util.List;

import com.gurada.domain.ProductVO;

public interface ResistrationService {
	
	void productInsert(ProductVO vo);
	
	ProductVO productSelect(ProductVO vo);
	
	public abstract List<ProductVO> getProductlist(ProductVO vo);
}
