package com.gurada.service;

import java.util.List;

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
	
	@Override
	public MemberVO userSignIn(MemberVO vo) {
		return dao.memberSelect(vo);
	}

	@Override
	public int userUpdate(MemberVO vo) {
		return dao.memberUpdate(vo);
	}
	
	@Override
	public MemberVO checkEmail(MemberVO vo) {
		return dao.memberSelect(vo);
	}

	@Override
	public List<MemberVO> memberList(MemberVO vo) {
		return dao.memberList(vo);  
	}

	@Override
	public List<MemberVO> memberSearch(MemberVO vo) {
		return dao.memberSearch(vo);
	}
}
