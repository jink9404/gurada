package com.gurada.infa;

import java.util.HashMap;
import java.util.List;

import com.gurada.domain.BoardVO;

public interface BoardDAO {
	public void insertBoard(BoardVO vo);

	public BoardVO getBoard(BoardVO vo) ;

	public List<BoardVO> getBoardList(BoardVO vo) ;
	
	public abstract List<BoardVO> getBoardList(HashMap map);

	public abstract int getCountBoard();
}
