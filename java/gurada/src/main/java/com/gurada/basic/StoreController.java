package com.gurada.basic;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gurada.domain.StoreVO;
import com.gurada.infa.StoreService;


@Controller
public class StoreController {

	@Autowired
	private StoreService StoreService;

	// 매장 검색하기
	@RequestMapping("/find.do")
	public void getStore(StoreVO vo, Model model,HttpServletRequest request) {
		StoreVO new_vo = StoreService.getStore(vo);
		model.addAttribute("store", new_vo);
		request.setAttribute("Latitude", new_vo.getLatitude());
		System.out.println("위도"+new_vo.getLatitude());
		request.setAttribute("Longitude", new_vo.getLongitude());
		
		// ViewResolver를 지정하지 않으면 아래처럼 페이지명 지정
		// return "views/getBoardList.jsp"; // View 이름 리턴
	}


}
