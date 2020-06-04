package com.gurada.basic;

import java.util.regex.Pattern;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gurada.domain.MemberVO;
import com.gurada.domain.ProductVO;
import com.gurada.infa.MemberService;
import com.gurada.infa.ResistrationService;

@Controller
public class MemberController {
	@Autowired
	private MemberService service;
	
	@RequestMapping("/signup.do")
	public String signup(MemberVO vo) {
		int result = service.userSignUp(vo);
		
		String message = vo.getName()+"님 가입을 축하드립니다.";
		if (result==0) {
			System.out.println("error");
		}
		return "redirect:/index.jsp";
	}
	

	//로그인시 AJAX로 로그인
	//로그인시 세션에 MemberVO와 UserID 에 저장. 연관 -> webapp/resources/js/login.js
	@ResponseBody
	@RequestMapping(value = "/login.do",produces = "application/text; charset=utf-8")
	public String login(MemberVO vo, HttpSession session) {
		MemberVO new_vo = new MemberVO();
		new_vo =  service.userSignIn(vo);
		String result ="";
		if(new_vo != null ) {
			if(new_vo.getName() != null)
				result = "<span class=\"in\">"+new_vo.getName()+" 님 환영합니다.";
				session.setAttribute("UserID", new_vo.getName());
				session.setAttribute("UserIDInfo", new_vo);
		}
		return result;
	}
	
//	로그아웃
	@ResponseBody
	@RequestMapping(value = "/logout.do")
	public void logout(HttpSession session) {
		session.removeAttribute("UserID");
		session.removeAttribute("UserIDInfo");
	}
	
//	회원수정
	@RequestMapping(value = "/updateMember.do")
	public String updateMember(MemberVO vo,HttpSession session) {
		int result = service.userUpdate(vo);
		session.setAttribute("UserIDInfo", service.userSignIn(vo));
		return "update_member";
	}
	
//	중복 이메일 체크 AJAX
	@ResponseBody
	@RequestMapping(value = "/checkEmail.do",produces = "application/text; charset=utf-8")
	public String checkEmail(MemberVO vo) {
		String result = "사용가능한 이메일입니다.";
		MemberVO checkvo= service.checkEmail(vo);
		if(checkvo != null) {
			result = "중복된 이메일입니다";
		}
		return result;
	}
}
	
