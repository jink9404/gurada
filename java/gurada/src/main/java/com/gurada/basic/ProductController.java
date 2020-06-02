package com.gurada.basic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gurada.domain.MemberVO;
import com.gurada.domain.ProductVO;
import com.gurada.infa.MemberService;
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
	
	@RequestMapping("/prodselect.do")
	public void product_select(ProductVO vo) {
		service1.productSelect(vo);
	}
}
