package com.gurada.infa;


import java.util.List;

import com.gurada.domain.BookingVO;
import com.gurada.domain.StoreVO;



public interface StoreDAO {

	//매장 찾기
	public StoreVO getStore(StoreVO vo) ;
	
	//매장 예약하기
	public int bookingInsert(int storeId,BookingVO bvo);
	
	//매장예약현황 검색
	public List<BookingVO> bookingSearch(BookingVO vo);
	
	//매장 예약 취소
	public int bookingDelete(BookingVO vo);
	
}
