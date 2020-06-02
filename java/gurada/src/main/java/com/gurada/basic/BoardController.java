package com.gurada.basic;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gurada.domain.BoardVO;
import com.gurada.infa.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;


	
		// 글 목록 검색
		@RequestMapping("/qna.do")
		public void getBoardList(BoardVO vo, Model model) {
			
			model.addAttribute("boardList", boardService.getBoardList(vo));
			// ViewResolver를 지정하지 않으면 아래처럼 페이지명 지정
			// return "views/getBoardList.jsp"; // View 이름 리턴
		}
	
		// 글 등록
		@RequestMapping(value = "/saveBoard.do")
		public String insertBoard(BoardVO vo) throws IOException {
			boardService.insertBoard(vo);
			return "redirect:/qna.do";
		}

		/*
		 * // 글 수정
		 * 
		 * @RequestMapping("/updateBoard.do") public String
		 * updateBoard(@ModelAttribute("board") BoardVO vo) {
		 * boardService.updateBoard(vo); return "redirect:/getBoardList.do"; }
		 * 
		 * // 글 삭제
		 * 
		 * @RequestMapping("/deleteBoard.do") public String deleteBoard(BoardVO vo) {
		 * boardService.deleteBoard(vo); return "redirect:/getBoardList.do"; }
		 * 
		 * // 글 상세 조회
		 * 
		 * @RequestMapping("/getBoard.do") public void getBoard(BoardVO vo, Model model)
		 * { model.addAttribute("board", boardService.getBoard(vo)); // Model 정보 저장 }
		 */

	}
