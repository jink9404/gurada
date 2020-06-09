package com.gurada.basic;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gurada.domain.OrderVO;
import com.gurada.domain.PagingVO;
import com.gurada.domain.ProductVO;
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
	public void mypageOrder(@RequestParam(value="nowPage", required=false)
							String nowPage,
							@RequestParam(value="cntPerPage", required=false)
						String cntPerPage,
	HttpSession session ,Model model) {
		 String userId = (String) session.getAttribute("UserID"); 
//		 model.addAttribute("order",service.mypageOrder(userId));
		 int total = service.mypageCount(userId);
			if (nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "10";
			} else if (nowPage == null) {
				nowPage = "1";
			} else if (cntPerPage == null) { 
				cntPerPage = "10";
			}
	
		//페이징
		PagingVO pageVo = new PagingVO(total,Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		List list = (List) service.mypageOrder(userId, pageVo);//product vo로 검색
		//list가 비어있지 않으면 model로 전송
		if(list != null) {
		 model.addAttribute("order",list);
		 model.addAttribute("paging", pageVo);
		}
	}
	
	//주문취소하기
	@RequestMapping("/orderDelete.do")
	public String orderDelete(String id) {
		service.orderDelete(id); 
		return "redirect:/my-page.do";
		
	}
	
	

}
