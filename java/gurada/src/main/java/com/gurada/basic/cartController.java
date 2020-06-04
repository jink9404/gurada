package com.gurada.basic;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gurada.domain.CartVO;
import com.gurada.infa.CartService;

@Controller
public class cartController {
	@Autowired
	  private CartService cartservice;
	
	@RequestMapping("cart.do")	
	public String cartInsert(CartVO vo) {
		
		int result = cartservice.cartCheck(vo);
		
		if(result == 0) {
			
			int result1 = cartservice.cartInsert(vo);
			
			if(result1 == 0) {
				return "product-page";
			}
			
		}else if(result != 0 ){
			
			int result1= cartservice.cartUpdate(vo);
			
			if(result1 == 0) {
				return "redirect:cartSelect.do";
			}
		}
		
		
		
		return "product-page";
	}
	@RequestMapping("cartselect.do")
	public String cartSelect(CartVO vo ,Model model) {
		model.addAttribute("cartSelect",cartservice.cartSelect(vo));
		return "wishlist";
	}
	
}