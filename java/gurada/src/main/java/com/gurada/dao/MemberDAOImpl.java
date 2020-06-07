package com.gurada.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gurada.domain.MemberVO;
import com.gurada.infa.MemberDAO;

@Repository("MemberDAO")
public class MemberDAOImpl implements MemberDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	//회원등록
	@Override
	public int memberInsert(MemberVO vo) {
		return mybatis.insert("com.gurada.MemberMapper.signUp",vo);
	}

	@Override
	public MemberVO memberSelect(MemberVO vo) {
		return mybatis.selectOne("com.gurada.MemberMapper.selectMember",vo);
	}

	@Override
	public int memberUpdate(MemberVO vo) {
		return mybatis.update("com.gurada.MemberMapper.updateMember",vo);
	} 

	@Override
	public List<MemberVO> memberList(MemberVO vo) {
		return mybatis.selectList("com.gurada.MemberMapper.selectMemberList", vo);
	}

	@Override
	public List<MemberVO> memberSearch(MemberVO vo) {
		return mybatis.selectList("com.gurada.MemberMapper.selectSearch", vo);
	}
}
