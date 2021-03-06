﻿package com.gurada.basic;

import java.net.URLEncoder;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gurada.domain.CartVO;
import com.gurada.domain.MemberVO;
import com.gurada.infa.CartService;

@Controller
public class cartController {
   @Autowired
   private CartService cartservice;
   // 상품 장바구니 담기
   // 상품이름을 받아와서 인코딩 처리.
   // 장바구니 리스트에 정보를 불러와서 같은 정보가 있는지 확인
   // 없다면 insert 장바구니내역에 추가.
   // 있다면 update로 수량 수정.
   // 이전 페이지로 화면 전환.
   @RequestMapping(value = "/cart.do", method=RequestMethod.POST)
   public String cartInsert(CartVO vo, HttpSession session) {
	   System.out.println("0");
      String encodedParam = null;
      try {
         encodedParam = URLEncoder.encode(vo.getName(), "UTF-8");
      } catch (Exception e) {
      }
      int result = cartservice.cartCheck(vo);
      if (result == 0) {
    	  System.out.println("1");
         int result1 = cartservice.cartInsert(vo);
         if (result1 == 0) {
        	 System.out.println("2");
        	 //장바구니 cartSelect 갱신
        	 session.setAttribute("cartSelect", cartservice.cartSelect(vo, (String) session.getAttribute("UserID")));
            return "redirect:cartSelect.do";
         }
      } else if (result != 0) {
    	  System.out.println("3");
         int result1 = cartservice.cartUpdate(vo);
         if (result1 == 0) {
        	 session.setAttribute("cartSelect", cartservice.cartSelect(vo,(String) session.getAttribute("UserID")));
            return "redirect:cartSelect.do";
         }
      }
      System.out.println("9");
      session.setAttribute("cartSelect", cartservice.cartSelect(vo, (String) session.getAttribute("UserID")));
      return "redirect:/product-page.do?productId=" + vo.getProductId() + "&name=" + encodedParam;
   }

   // 장바구니 리스트 불러오기
   // 세션에 저장되어있는 userId를 불러와서  select문에 보내줌.
   @RequestMapping("cartselect.do")
   public String cartSelect2(CartVO vo, Model model, HttpSession session) {
      CartVO cart = new CartVO();
	   MemberVO mem = (MemberVO)session.getAttribute("UserIDInfo");
	   cart.setMemberNo(mem.getMemberNo());
      model.addAttribute("cartSelect", cartservice.cartSelect(cart, mem.getMemberNo()));
      return "wishlist";
   }
   
   
   // 장바구니내역 삭제하기
   @RequestMapping("/cartDelete.do")
   public String cartDelete(int id, String memberNo, HttpSession session) {
      int rs = cartservice.cartDelete(id);
      session.removeAttribute("cartSelect");
      return "redirect:/cartselect.do?memberNo=" + memberNo;

   }

	/*
	 * //구매하기 버튼
	 * 
	 * @RequestMapping("/pay3.do") public String buyProduct(CartVO vo) {
	 * cartservice.buyProduct(vo); return "redirect:/cartselect.do"; }
	 */
   @RequestMapping(value = "/pay3.do", method=RequestMethod.POST)
   public String buyProduct(CartVO vo, HttpSession session) {
	   String encodedParam = null;
	      try {
	         encodedParam = URLEncoder.encode(vo.getName(), "UTF-8");
	      } catch (Exception e) {
	      }
	   int result = cartservice.cartCheck(vo);
      if (result == 0) {
         int result1 = cartservice.cartInsert(vo);
         
         if (result1 == 0) {
        	 //장바구니 cartSelect 갱신
        	 session.setAttribute("cartSelect", cartservice.cartSelect(vo, (String) session.getAttribute("UserID")));
            return "redirect:/cartSelect.do";
         }
      } else if (result != 0) {
         int result1 = cartservice.cartUpdate(vo);
         if (result1 == 0) {
        	 session.setAttribute("cartSelect", cartservice.cartSelect(vo,(String) session.getAttribute("UserID")));
            return "redirect:/cartSelect.do";
         }
      }
      session.setAttribute("cartSelect", cartservice.cartSelect(vo, (String) session.getAttribute("UserID")));
      return "redirect:/cartselect.do";
   }
}