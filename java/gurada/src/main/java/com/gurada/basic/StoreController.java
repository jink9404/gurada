package com.gurada.basic;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gurada.domain.StoreVO;
import com.gurada.infa.StoreService;


@Controller
public class StoreController {

	@Autowired
	private StoreService StoreService;

	// 매장 검색하기
	@RequestMapping("/find.do")
	public String getStore(StoreVO vo, HttpServletRequest request) {
		
		StoreVO nvo=StoreService.getStore(vo);
		System.out.println(nvo.getLatitude());
		System.out.println(nvo.getLongitude());
		request.setAttribute("store", nvo);
		request.setAttribute("latitude", nvo.getLatitude());
		request.setAttribute("longitude", nvo.getLongitude());
		return "/find-store";
	
	}
	
	
		@RequestMapping("/booking.do")
		public void bookingStore(StoreVO vo,HttpServletRequest request) {
			request.setAttribute("booking", vo);
			request.setAttribute("blatitude", vo.getLatitude());
			request.setAttribute("blongitude", vo.getLongitude());
			
			
		}
	
}
