package com.gurada.infa;

import com.gurada.domain.MemberVO;

//회원관련 인터페이
public interface MemberDAO {
	//회원가입
	public abstract int memberInsert(MemberVO vo);
	//회원가입 ID 중복체
	public abstract MemberVO idCheck(MemberVO vo);
	//로그인을 위한 DB에서 회원정보 가져오기
	public abstract MemberVO memberSelect(MemberVO vo);
	
	public abstract int memberUpdate(MemberVO vo);
}
