package com.gurada.basic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gurada.domain.ProductVO;
import com.gurada.infa.ResistrationService;

@Controller
public class ProductController {
	
	@Autowired
	private ResistrationService service1;
	
	@RequestMapping("/resistration1.do") 
	public String product_resistration(ProductVO vo) {
		service1.productInsert(vo);
		return "/resistration";
	}
	//상품 목록 검색
	@RequestMapping("/product-registration.do")
	public void product_select(ProductVO vo, Model model) {
		model.addAttribute("prodlist",service1.productSelectList(vo));
	}
}
