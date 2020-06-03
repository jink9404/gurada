package com.gurada.basic;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

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
	public String getStore(StoreVO vo, Model model) {
		
		StoreVO nvo=StoreService.getStore(vo);
		model.addAttribute("store", nvo);
		model.addAttribute("Latitude", nvo.getLatitude());
		model.addAttribute("longitude", nvo.getLongitude());
		return "redirect:/find-store.do";
	
	}


}
