package com.gurada.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gurada.domain.PagingVO;
import com.gurada.domain.ProductVO;
import com.gurada.infa.ProductDAO;
import com.gurada.infa.ResistrationService;

@Service("service1")
public class ResistrationServiceImpl implements ResistrationService {
	@Autowired
	private ProductDAO ProductDAO; 
	@Override
	public void productInsert(ProductVO vo) {
		ProductDAO.ProductInsert(vo);
	}

	@Override
	public List<ProductVO> getProductlist(ProductVO vo){
		return ProductDAO.productSelectList(vo);
	}
	
	//productVo 조건 ProductVO gender, category 별 리스트
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
}
