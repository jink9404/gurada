package com.gurada.basic;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gurada.domain.CartVO;
import com.gurada.infa.CartService;
import com.gurada.infa.PayService;

@Controller
public class PayController {
	
    @Autowired private PayService payservice;
       //결제화면으로 넘어가기
    @RequestMapping("pay.do") 
    public String payInsert(CartVO vo,Model model) {
		 model.addAttribute("Paylist",payservice.payInsert(vo)); 
    return "redirect:pay.do"; 
}
		 

		
		 
}
