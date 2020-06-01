package com.gurada.basic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gurada.domain.MemberVO;
import com.gurada.infa.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService service;
	
	@RequestMapping("/signup.do")
	public ModelAndView insert(MemberVO vo) {
		ModelAndView mv = new ModelAndView();
		int result = service.userSignUp(vo);
		mv.addObject("result", result);
		String message = vo.getFirstName()+"님 가입을 축하드립니다.";
		if (result==0) {
			mv.setViewName("505");
			message = "알 수 없는 에러가 발생하였습니다.";
		}
		
		mv.setViewName(null);
		
		return mv;
	}
}
