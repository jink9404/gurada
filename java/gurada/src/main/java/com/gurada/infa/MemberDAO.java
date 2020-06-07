package com.gurada.infa;

import java.util.List;

import com.gurada.domain.MemberVO;

//회원관련 인터페이
public interface MemberDAO {
	//회원가입
	public abstract int memberInsert(MemberVO vo);
	//로그인을 위한 DB에서 회원정보 가져오기
	public abstract MemberVO memberSelect(MemberVO vo);
	
	public abstract int memberUpdate(MemberVO vo);
	//회원 관리 페이지의 리스트 가져오기
	public List<MemberVO> memberList(MemberVO vo);
	//회원관리 페이지 이름명으로 검색
	public List<MemberVO> memberSearch(MemberVO vo);
}
