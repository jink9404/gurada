package com.gurada.infa;

import java.util.HashMap;
import java.util.List;

import com.gurada.domain.BoardVO;

public interface BoardDAO {
	//게시글 등록
	public void insertBoard(BoardVO vo);
	//게시글 내용보기
	public BoardVO getBoard(BoardVO vo) ;
	//게시판 목록보기
	public List<BoardVO> getBoardList(BoardVO vo) ;
	// 글 목록 조회(페이징)
	public abstract List<BoardVO> getBoardList(HashMap map);
	//글목록 총 갯수
	public abstract int getCountBoard(BoardVO vo);
}
