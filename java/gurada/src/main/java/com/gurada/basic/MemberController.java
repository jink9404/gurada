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
		
		
		return null;
	}
}
