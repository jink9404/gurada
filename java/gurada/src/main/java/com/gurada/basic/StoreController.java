package com.gurada.basic;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gurada.domain.BookingVO;
import com.gurada.domain.StoreVO;
import com.gurada.infa.StoreService;

@Controller
public class StoreController {

	@Autowired
	private StoreService StoreService;

	// 매장 찾기
	@RequestMapping("/find.do")
	public String getStore(StoreVO vo, HttpServletRequest request) {

		StoreVO nvo = StoreService.getStore(vo);
		request.setAttribute("store", nvo);
		request.setAttribute("latitude", nvo.getLatitude());
		request.setAttribute("longitude", nvo.getLongitude());
		return "/find-store";

	}
	//위도, 경도 정보 보내주기
	@RequestMapping("/booking-data.do")
	public String booking_data(StoreVO vo, HttpServletRequest request) {

		request.setAttribute("bstore", vo);
		request.setAttribute("blatitude", vo.getLatitude());
		request.setAttribute("blongitude", vo.getLongitude());
		return "/booking";

	}
	//매장 예약하기
	@RequestMapping("/reservation-rs.do")
	public void bookingInsert(int storeId, BookingVO bvo) {
		StoreService.bookingInsert(storeId, bvo);
	}

	//예약내역 검색하기(관리자 페이지)
	//selete박스의 선택 정보에 따라 BookingVO에 정보를 담아서 인자로 보냄.
	@RequestMapping("/booking-search.do")
	public String booking_search(@RequestParam(name = "value", required = false) String value,
			@RequestParam(name = "search", required = false) String search, Model model) {
		
		BookingVO vo = new BookingVO();
		if (search.equals("oname"))
			vo.setFullName(value);
		else if (search.equals("otel"))
			vo.setPhoneNumber(value);

		model.addAttribute("search", StoreService.bookingSearch(vo));

		return "/bookinglist";
	}
	
	//매장예약 취소하기
	@RequestMapping("/booking-delete.do")
	public String bookingDelete(BookingVO vo) {
		StoreService.bookingDelete(vo);
		return "/bookinglist";
	}

}
