package com.gurada.basic;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gurada.domain.PagingVO;
import com.gurada.domain.ProductVO;
import com.gurada.infa.ResistrationService;

@Controller
public class ProductController {
	
	@Autowired
	private ResistrationService service;
	//상품 등록 페이지
	@RequestMapping("/resistration1.do") 
	public String product_resistration(ProductVO vo) {
		service.productInsert(vo);
		return "/resistration";
	}
	
	//상품관리(리스트) 목록 검색
	@RequestMapping("/product-list.do")
	public void product_select(ProductVO vo, Model model) {
		 model.addAttribute("prodlist",service.getProductlist(vo));
	}
		
	//User category별 ProductList
	//produces => 한글처리
	//RequestParam => URL로 받은 파라미터
	@RequestMapping(value = "/categories.do", produces = "application/text; charset=utf-8")
	public void productList(	@RequestParam(value="nowPage", required=false)
								String nowPage,
								@RequestParam(value="cntPerPage", required=false)
								String cntPerPage,
								@RequestParam(value = "category", defaultValue = "suit") 
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
			int total = service.countProductList(vo);
				if (nowPage == null && cntPerPage == null) {
					nowPage = "1";
					cntPerPage = "20";
				} else if (nowPage == null) {
					nowPage = "1";
				} else if (cntPerPage == null) { 
					cntPerPage = "20";
				}
		
			//페이징
			PagingVO pageVo = new PagingVO(total,Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
			List<ProductVO> list = (List<ProductVO>) service.getProductList(vo, pageVo);//product vo로 검색
			//list가 비어있지 않으면 model로 전송
			if(list != null) {
				model.addAttribute("productList", list );
				model.addAttribute("URLcategory",category);
				model.addAttribute("gender",gender);
				model.addAttribute("paging", pageVo);
			}
	}
	
	//삭제하기 -kjs
	@RequestMapping(value="/delete.do",method = RequestMethod.POST)
	public String delete_user(@RequestParam("delete") String[] delete, ModelMap modelMap) throws Exception{
		// 삭제할 사용자 ID마다 반복해서 사용자 삭제
		for (String productId : delete) { 
			int delete_count = service.delete(productId); 
		} // 목록 페이지로 이동
		return "redirect:/product-list.do"; }
	
	
	//상품 재고 수정하기 위해 페이지 지정-kjs+jain+o
	@RequestMapping("/update.do")
	public String updateProduct(ProductVO vo, Model model) {
		model.addAttribute("modify",service.productUpdate(vo));
		return "productModify";
	}
	
	//상품 재고 수정하기-kjs+jain+o
	@RequestMapping("/modify.do")
	public String modifyProduct(ProductVO vo, HttpServletRequest request) {
		String productId = request.getParameter("productId");
		vo.setProductId(productId);
		service.productModify(vo);
		return  "redirect:/product-list.do";
	}
	//상품명으로 검색(상품관리 페이지)
	@RequestMapping("/product-search.do")
	public String search(ProductVO vo, Model model) {
		model.addAttribute("prodlist", service.productSearch(vo));
		return "product-list";
	}
	
	//상품 카테고리 화면에서 클릭한 상품의 id값과 name값으로 상품 디테일화면으로 전환
	@RequestMapping("/product-page.do")
	public void productpage(ProductVO vo,HttpServletRequest request, Model model) {
		String productId = request.getParameter("productId");
		String name = request.getParameter("name");
		vo.setName(name);
		vo.setProductId(productId);
		model.addAttribute("detail", service.getProductDetail(vo));
		 model.addAttribute("viewlist",service.getProductlist(vo));
	} 
	
	//!!!!!!!!!!!!!!!!
	//메인페이지  상품목록 보여주기 
	   @RequestMapping("/main.do")
	   public void product_viewindex(ProductVO vo, Model model) {
	       model.addAttribute("viewlist",service.getProductlist(vo));
	   }
	   
	
}
