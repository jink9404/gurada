package com.gurada.infa;

import com.gurada.domain.MemberVO;

public interface MemberService {
	public abstract int userSignUp(MemberVO vo);
	public abstract MemberVO userSignIn(MemberVO vo);
}


