package com.gurada.basic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gurada.infa.CartService;

@Controller
public class cartController {
	
	@Autowired
	private CartService service;
	
	@RequestMapping("/cart.do")
	public void cartInsert() {
		
	}
		

	
	
}
