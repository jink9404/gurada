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
	
	//게시글 등록하기
	public void insertBoard(BoardVO vo) {
		System.out.println("===> Mybatis insertBoard() 호출");
		mybatis.insert("BoardDAO.insertBoard", vo);
	}

	//게시글 내용 보기
	public BoardVO getBoard(BoardVO vo) {
		System.out.println("===> Mybatis getBoard() 호출");
		return (BoardVO) mybatis.selectOne("BoardDAO.getBoard", vo);
	}
	
	//게시판 목록보기
	public List<BoardVO> getBoardList(BoardVO vo) {
		System.out.println("===> Mybatis getBoardList() 호출");
		return mybatis.selectList("BoardDAO.getBoardList", vo);
		
	}
	

	public int getCountBoard(BoardVO vo) {
		System.out.println("===> Mybatis countBoard");
		return mybatis.selectOne("BoardDAO.getBoardCount",vo);
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
	
	//게시글 삭제
	public int deleteBoard(BoardVO vo) {
		System.out.println("===> Mybatis deleteBoard() 호출");
		int rs=mybatis.delete("BoardDAO.deleteBoard", vo);
		return rs;
	}
	
	//게시글 수정
	public int updateBoard(BoardVO vo) {
		int rs=mybatis.update("BoardDAO.updateBoard",vo);
		return rs;
	}
	

}