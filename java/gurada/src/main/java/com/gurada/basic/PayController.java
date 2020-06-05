package com.gurada.basic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gurada.domain.CartVO;
import com.gurada.infa.PayService;

@Controller
public class PayController {
	@Autowired
	private PayService payservice;
	
	//결제화면으로 넘어가기
@RequestMapping("pay.do")
public String paylist(CartVO vo,Model model) {
System.out.println(vo);
model.addAttribute("Paylist",payservice.payInsert(vo));
return "pay";
		}
		
		
		
		 
}
