package com.gurada.basic;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	@RequestMapping("/prodselect.do")
	public String product_select(ProductVO vo, Model model) {
		model.addAttribute("prodlist", service1.productSelect(vo));
		return "/product-registration";
	}
	
	//상품리스트
	//produces => 한글처리
	//RequestParam => URL로 받은 파라미터
	@RequestMapping(value = "/categories.do", produces = "application/text; charset=utf-8")
	public void productList(	@RequestParam(value = "category", defaultValue = "suit") 
								String category,
								@RequestParam(value = "gender", defaultValue = "man")
								String gender, HttpSession session, Model model) {
		ProductVO vo = new ProductVO();				//검색을 위한 상품객체
		
		//카테고리 파라미터에 따른 객체값 세션 저장 
		switch (category) {
		case "suit": vo.setCategoryId("슈트");	session.setAttribute("category", "슈트");		break;
		case "outter":vo.setCategoryId("아우터");	session.setAttribute("category", "아우터");	break;
		case "bag":vo.setCategoryId("가방");		session.setAttribute("category", "가방");		break;
		case "top":vo.setCategoryId("상의");		session.setAttribute("category", "상의");		break;
		case "bottom":vo.setCategoryId("하의");	session.setAttribute("category", "하의");		break;
		case "dress":vo.setCategoryId("드레스");	session.setAttribute("category", "드레스");	break;
		default: vo.setCategoryId("슈트");		session.setAttribute("category", "드레스");	break;
		}
		
		if(gender.equals("man")) {
			vo.setGender("남자");
		}else {
			vo.setGender("여자");
		}
		//카테고리 파라미터에 따른 객체값 저장 END
		
		List<ProductVO> list = (List<ProductVO>) service1.getProductlist(vo);//product vo로 검색
		//list가 비어있지 않으면 model로 전송
		if(list != null)
			model.addAttribute("productList", list );
	}
	
	@RequestMapping(value = "/product-page.do")
	public void productPage() {
		
	}
}
