package com.gurada.infa;

import java.util.List;

import com.gurada.domain.BoardVO;
import com.gurada.domain.PagingVO;



public interface BoardService {
	// CRUD 기능의 메소드 구현
	// 글 등록
	void insertBoard(BoardVO vo);

	// 글 상세 조회
	BoardVO getBoard(BoardVO vo);

	// 글 목록 조회
	List<BoardVO> getBoardList(BoardVO vo);
	
	// 글 목록 조회(페이징)
	List<BoardVO> getBoardList(BoardVO vo,PagingVO pageVo);
	// 글 목록 총 갯수
	public abstract int getBoardCount(BoardVO vo);
}
