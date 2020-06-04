package com.gurada.infa;


import java.util.List;

import com.gurada.domain.BookingVO;
import com.gurada.domain.StoreVO;





public interface StoreService {

	// 매장 찾기 
	StoreVO getStore(StoreVO vo);
	
	//예약 하기
	int bookingInsert(int storeId,BookingVO bvo);
	
	//예약리스트검색
	List<BookingVO> bookingSearch(BookingVO vo);
}
