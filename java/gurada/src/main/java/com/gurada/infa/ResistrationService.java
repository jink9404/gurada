package com.gurada.infa;

import java.util.List;

import com.gurada.domain.PagingVO;
import com.gurada.domain.ProductVO;

public interface ResistrationService {
	//상품 재고 수정
	public void productModify(ProductVO vo);
	//상품 재고 수정하기 위해 페이지 전환
	public ProductVO productUpdate(ProductVO vo);
	//상품 등록
	void productInsert(ProductVO vo);
	//상품관리(리스트) 목록검색
	public abstract List<ProductVO> getProductlist(ProductVO vo);
	public abstract List<ProductVO> getProductList(ProductVO productVo, PagingVO PageVo);
	public abstract int countProductList(ProductVO productVo);
	//상품 카테고리 화면에서 클릭한 상품의 id값과 name값으로 상품디테일 화면으로 전환
	public ProductVO getProductDetail(ProductVO vo);
	//상품관리(리스트)페이지에서 삭제버튼
	public int delete(String name);
	//상품검색
	List<ProductVO> productSearch(ProductVO vo);

}
