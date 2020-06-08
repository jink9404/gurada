package com.gurada.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gurada.domain.PagingVO;
import com.gurada.domain.ProductVO;
import com.gurada.infa.ProductDAO;
import com.gurada.infa.ResistrationService;

@Service("service")
public class ResistrationServiceImpl implements ResistrationService {
	@Autowired
	private ProductDAO ProductDAO; 
	//신상품등록(관리자페이지)
	@Override
	public void productInsert(ProductVO vo) {
		ProductDAO.ProductInsert(vo);
	}
	//삭제
	@Override
	   public int delete(String name) {
	   return ProductDAO.delete(name);   
	}
	//productVo 조건 ProductVO gender, category 별 리스트(30~46행)
	@Override
	public List<ProductVO> getProductlist(ProductVO vo){
		return ProductDAO.productSelectList(vo);
	}
	@Override
	public List<ProductVO> getProductList(ProductVO productVo,PagingVO pageVo){
		HashMap map = new HashMap();
		map.put("productVo", productVo);
		map.put("pageVo", pageVo);
		return ProductDAO.productSelectList(map);
	}
	@Override
	public int countProductList(ProductVO productVo) {
		return ProductDAO.countProduct(productVo);
	}
	//상품 카테고리 화면에서 클릭한 상품의 id값과 name값으로 상품디테일 화면으로 전환
	@Override
	public ProductVO getProductDetail(ProductVO vo) {
		return ProductDAO.productDetail(vo);
	}
	//상품 재고 수정하기 위한 페이지전환
	@Override
	public ProductVO productUpdate(ProductVO vo) {
		return ProductDAO.productUpdate(vo);
	}
	//상품 재고 수정
	@Override
	public void productModify(ProductVO vo) {
		ProductDAO.productModify(vo);	
	}
	//상품 검색
	@Override
	public List<ProductVO> productSearch(ProductVO vo) {
		return ProductDAO.productSearch(vo);
	}
	
}
