package com.gurada.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gurada.domain.BookingVO;
import com.gurada.domain.StoreVO;
import com.gurada.infa.StoreDAO;

@Repository("StoreDAO")
public class StoreDAOImpl implements StoreDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	//매장찾기
	public StoreVO getStore(StoreVO vo) {

		return mybatis.selectOne("StoreDAO.getStore", vo);
	}
	
	//매장 예약하기
	//hashmap에 값을 저장하여  mapper로 보냄.
	public int bookingInsert(int storeId,BookingVO bvo) {
		
		HashMap map= new HashMap();
		map.put("storeId",storeId );
		map.put("BookingDate",bvo.getBookingDate());
		map.put("fullName",bvo.getFullName());
		map.put("PhoneNumber",bvo.getPhoneNumber());
		map.put("time",bvo.getTime());
		
		int a =mybatis.insert("StoreDAO.bookingInsert",map);	
		return a;
	}

	//매장예약현황 검색하기
	public List<BookingVO> bookingSearch(BookingVO vo) {
		return mybatis.selectList("StoreDAO.bookingSearch", vo);
	}
	
	
	
}