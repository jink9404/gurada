package com.gurada.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gurada.dao.StoreDAOImpl;
import com.gurada.domain.BookingVO;
import com.gurada.domain.StoreVO;
import com.gurada.infa.StoreService;



@Service("StoreService")
public class StoreServiceImpl implements StoreService {
	@Autowired
	private StoreDAOImpl StoreDAO;


	public StoreVO getStore(StoreVO vo) {
		return StoreDAO.getStore(vo);
	}


	@Override
	public int bookingInsert(int storeId, BookingVO bvo) {
		
		return StoreDAO.bookingInsert(storeId, bvo) ;
	}



}