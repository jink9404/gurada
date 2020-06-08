package com.gurada.basic;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gurada.domain.OrderVO;
import com.gurada.infa.OrderService;


@Controller
public class OrderController {
	
	@Autowired
	private OrderService service;
	
	//관리자 페이지 주문내역 리스트
	@RequestMapping("/order-manageList.do")
	public String orderList(OrderVO vo,Model model) {
		model.addAttribute("order",service.getOrderList(vo));
		return "/order-management";
	}
	
	//마이페이지 주문내역 리스트
	@RequestMapping("/my-page.do")
	public void mypageOrder(HttpSession session ,Model model) {
		 String userId = (String) session.getAttribute("UserID"); 
		 model.addAttribute("order",service.mypageOrder(userId));
	}
	
	//주문취소하기
	@RequestMapping("/orderDelete.do")
	public String orderDelete(String id) {
		service.orderDelete(id); 
		return "redirect:/my-page.do";
		
	}
	
	

}
