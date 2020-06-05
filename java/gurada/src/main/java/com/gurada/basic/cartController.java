package com.gurada.basic;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.StringTokenizer;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gurada.domain.CartVO;
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
   @RequestMapping(value = "cart.do", method = RequestMethod.POST)
   public String cartInsert(CartVO vo, HttpSession session) {
      String encodedParam = null;

      try {
         encodedParam = URLEncoder.encode(vo.getName(), "UTF-8");
      } catch (Exception e) {
      }

      int result = cartservice.cartCheck(vo);
      if (result == 0) {
         int result1 = cartservice.cartInsert(vo);
         if (result1 == 0) {
            return "redirect:cartSelect.do";
         }
      } else if (result != 0) {
         int result1 = cartservice.cartUpdate(vo);

         if (result1 == 0) {
            return "redirect:cartSelect.do";
         }
      }
      return "redirect:/product-page.do?productId=" + vo.getProductId() + "&name=" + encodedParam;
   }

   // 장바구니 리스트 불러오기
   // 세션에 저장되어있는 userId를 불러와서  select문에 보내줌.
   @RequestMapping("cartselect.do")
   public String cartSelect(CartVO vo, Model model, HttpSession session) {
      String userId = (String) session.getAttribute("UserID");
      
         model.addAttribute("cartSelect", cartservice.cartSelect(vo, userId));
         
         return "wishlist";
   }
   

   // 장바구니내역 삭제하기
   @RequestMapping("/cartDelete.do")
   public String cartDelete(int id, String memberNo) {

      int rs = cartservice.cartDelete(id);
      return "redirect:/cartselect.do?memberNo=" + memberNo;

   }

}