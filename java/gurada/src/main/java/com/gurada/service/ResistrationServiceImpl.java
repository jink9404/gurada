package com.gurada.service;

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
	public ProductVO productSelect(ProductVO vo) {
		return ProductDAO.ProductSelect(vo); 
	}

}
