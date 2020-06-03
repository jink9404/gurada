package com.gurada.infa;


import com.gurada.domain.BookingVO;
import com.gurada.domain.StoreVO;





public interface StoreService {

	// 매장 찾기 
	StoreVO getStore(StoreVO vo);
	
	//예약 하기
	int bookingInsert(int storeId,BookingVO bvo);
}
