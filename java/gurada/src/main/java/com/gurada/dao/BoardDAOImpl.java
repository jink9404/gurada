package com.gurada.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gurada.domain.BoardVO;
import com.gurada.infa.BoardDAO;



@Repository("boardDAO") 
public class BoardDAOImpl implements BoardDAO{
	@Autowired
	private SqlSessionTemplate mybatis;

	public void insertBoard(BoardVO vo) {
		System.out.println("===> Mybatis insertBoard() 호출");
		mybatis.insert("BoardDAO.insertBoard", vo);
	}

	
	public BoardVO getBoard(BoardVO vo) {
		System.out.println("===> Mybatis getBoard() 호출");
		return (BoardVO) mybatis.selectOne("BoardDAO.getBoard", vo);
	}

	public List<BoardVO> getBoardList(BoardVO vo) {
		System.out.println("===> Mybatis getBoardList() 호출");
		return mybatis.selectList("BoardDAO.getBoardList", vo);
		
	}
	
	public int getCountBoard() {
		System.out.println("===> Mybatis countBoard");
		return mybatis.selectOne("BoardDAO.getBoardCount");
	}
	
	/*	
	 * HashMap 1) Key:BoardVO, Value:BoardVO객체
	 * 			2) Key:PagingVO, Value:PagingVO객체
	 *	return -> paging처리에 의한 리스트 
	 */
	public List<BoardVO> getBoardList(HashMap map) {
		System.out.println("===> Mybatis getBoardListPaging() 호출");
		return mybatis.selectList("BoardDAO.getBoardListPaging",map);
	}
}