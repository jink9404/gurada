package com.gurada.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gurada.domain.MemberVO;
import com.gurada.infa.MemberDAO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public int memberSignUp(MemberVO vo) {
		
		return mybatis.insert("",vo);
	}

	@Override
	public MemberVO idCheck(MemberVO vo) {
		
		return null;
	}

	@Override
	public MemberVO memberSelect(MemberVO vo) {
		return null;
	}

}
