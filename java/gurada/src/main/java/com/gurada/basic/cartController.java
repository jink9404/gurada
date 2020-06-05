package com.gurada.basic;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gurada.domain.CartVO;
import com.gurada.infa.CartService;

@Controller
public class cartController {
	@Autowired
	  private CartService cartservice;
	// 상품 장바구니 담기, 중복처리
	
	@RequestMapping(value="cart.do", method= RequestMethod.POST)	
	public String cartInsert(CartVO vo, HttpSession session) {
		int result = cartservice.cartCheck(vo);
		if(result == 0) { 
			int result1 = cartservice.cartInsert(vo);
			if(result1 == 0) {
				return "redirect:cartSelect.do";
			}
		}else if(result != 0 ){
			int result1= cartservice.cartUpdate(vo);
			
			if(result1 == 0) {
				return "redirect:cartSelect.do";
			} 
		}
		return "redirect:/product-page.do?productId="+vo.getProductId()+"&name="+vo.getName();
	}
	//장바구니 리스트 불러오기
	@RequestMapping("cartselect.do")
	public String cartSelect(CartVO vo ,Model model) {
		model.addAttribute("cartSelect",cartservice.cartSelect(vo));
		return "wishlist";
	}
	
}