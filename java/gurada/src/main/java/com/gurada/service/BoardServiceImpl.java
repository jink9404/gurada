package com.gurada.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gurada.dao.BoardDAOImpl;
import com.gurada.domain.BoardVO;
import com.gurada.domain.PagingVO;
import com.gurada.infa.BoardService;


@Service("boardService")
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDAOImpl boardDAO;

	public void insertBoard(BoardVO vo) {

		boardDAO.insertBoard(vo);
	}

	public BoardVO getBoard(BoardVO vo) {
		return boardDAO.getBoard(vo);
	}

	public List<BoardVO> getBoardList(BoardVO vo) {
		return boardDAO.getBoardList(vo);
	}

	public int getBoardCount(BoardVO vo) {
		return boardDAO.getCountBoard(vo);
	}

	
	/*
	 *		PagingVO는 페이징 처리를 위한 설정 값 
	 */
	public List<BoardVO> getBoardList(BoardVO vo,PagingVO pageVo) {
		HashMap map = new HashMap();
		map.put("BoardVO", vo);
		map.put("PagingVO", pageVo);
		return boardDAO.getBoardList(map);
	}
}