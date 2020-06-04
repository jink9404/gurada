package com.gurada.infa;

import java.util.List;

import com.gurada.domain.PagingVO;
import com.gurada.domain.ProductVO;

public interface ResistrationService {
	
	public void productModify(ProductVO vo);
	
	
	public ProductVO productUpdate(ProductVO vo);
	
	void productInsert(ProductVO vo);
	
	public abstract List<ProductVO> getProductlist(ProductVO vo);
	
	public abstract List<ProductVO> getProductList(ProductVO productVo, PagingVO PageVo);
	
	public abstract int countProductList(ProductVO productVo);

	public ProductVO getProductDetail(ProductVO vo);
	
	public int delete(String name);
	
	//상품검색
	List<ProductVO> productSearch(ProductVO vo);
	

}
