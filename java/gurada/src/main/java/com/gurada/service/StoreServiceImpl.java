package com.gurada.service;


import java.util.List;

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

	//매장정보 보기
	public StoreVO getStore(StoreVO vo) {
		return StoreDAO.getStore(vo);
	}

	//매장예약하기
	@Override
	public int bookingInsert(int storeId, BookingVO bvo) {
		
		return StoreDAO.bookingInsert(storeId, bvo) ;
	}

	//매장내역 검색하기(관리자 페이지)
	@Override
	public List<BookingVO> bookingSearch(BookingVO vo) {
		
		return StoreDAO.bookingSearch(vo) ;
	}
	
	//매장 예약 취소하기
	public int bookingDelete(BookingVO vo) {
		return StoreDAO.bookingDelete(vo); 
	}

}