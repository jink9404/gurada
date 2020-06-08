package com.gurada.basic;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gurada.domain.CartVO;
import com.gurada.domain.OrderVO;
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
  
    @RequestMapping("/payment-rs.do")
    public void payInsert(OrderVO vo, HttpSession session, HttpServletRequest request) {
    	vo.setTotal(Integer.parseInt(request.getParameter("total")));
    	String []productArr = request.getParameterValues("productNo");
    	
    	for(int i=0 ; i<productArr.length ; i++) {
    		vo.setProductNo(productArr[i]);
    		payservice.payInsert(vo);
    	}
    }
}
