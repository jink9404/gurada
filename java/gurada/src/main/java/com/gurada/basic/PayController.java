package com.gurada.basic;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
    public void payInsert(OrderVO vo, HttpSession session, HttpServletRequest request, Model model) {
    	vo.setTotal(Integer.parseInt(request.getParameter("total")));
    	String []productArr = request.getParameterValues("productNo");
    	String []productArr2 = request.getParameterValues("count");

    	String message = "";
    	for(int i=0 ; i<productArr.length ; i++) {
    		vo.setProductNo(productArr[i]);

        		int count =Integer.parseInt(productArr2[i]);
	    		try {
	    			payservice.payInsert(vo, count);
	    			message="결제가 완료되었습니다.!"; 
	    		}catch (Exception e) {
					System.out.println(e.toString());
					message="결제에 실패했습니다. <br>올바르지 않은 상품정보";
				}
	    		model.addAttribute("message", message);

    	}
    }
    
    
     
}
