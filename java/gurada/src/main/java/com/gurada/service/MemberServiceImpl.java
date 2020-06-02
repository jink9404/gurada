package com.gurada.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gurada.domain.MemberVO;
import com.gurada.infa.MemberDAO;
import com.gurada.infa.MemberService;
@Service("memberService")
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO dao;
	@Override
	public int userSignUp(MemberVO vo) {
		return dao.memberInsert(vo);
	}
	
	public MemberVO userSignIn(MemberVO vo) {
		return dao.memberSelect(vo);
	}

}
