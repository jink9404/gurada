package com.gurada.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

	@Override
	public ProductVO getProductDetail(ProductVO vo) {
		return ProductDAO.productDetail(vo);
	}
	
	
}
