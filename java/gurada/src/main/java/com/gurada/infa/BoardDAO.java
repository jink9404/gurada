package com.gurada.infa;

import java.util.List;

import com.gurada.domain.BoardVO;

public interface BoardDAO {
	public void insertBoard(BoardVO vo);

	public BoardVO getBoard(BoardVO vo) ;

	public List<BoardVO> getBoardList(BoardVO vo) ;
}
