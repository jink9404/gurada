package com.gurada.basic;

import java.util.List;

import javax.servlet.http.HttpSession;

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
    
    @RequestMapping("/payment.do")
    public String payMent(CartVO vo, Model model, HttpSession session){
    	vo.setMemberNo((String)session.getAttribute("memberNo"));
    	model.addAttribute("pay", payservice.paySelect(vo));
    	return "pay2";
    }
}
