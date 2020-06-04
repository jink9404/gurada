package com.gurada.basic;


import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gurada.domain.BoardVO;
import com.gurada.domain.PagingVO;
import com.gurada.infa.BoardService;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;

	// 문의 게시판 목록보기
	@RequestMapping(value = "/qna.do", produces = "application/text; charset=utf-8")
	public void getBoardList(@RequestParam(value="nowPage", required=false)
							 String nowPage,
							 @RequestParam(value="cntPerPage", required=false)
							String cntPerPage,
							BoardVO vo, Model model) {

		
		int total = boardService.getBoardCount();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "10";
		}
		
		PagingVO pageVo = new PagingVO(total,Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		List<BoardVO> list = boardService.getBoardList(vo,pageVo);
		model.addAttribute("boardList", list);
		model.addAttribute("paging", pageVo);
		// ViewResolver를 지정하지 않으면 아래처럼 페이지명 지정
		// return "views/getBoardList.jsp"; // View 이름 리턴
	}

	// 문의글 등록 하기
	@RequestMapping(value = "/saveBoard.do")
	public String insertBoard(BoardVO vo) throws IOException {
		boardService.insertBoard(vo);
		return "redirect:/qna.do";
	}
	
	//문의 내용 보기
	@RequestMapping("/qna-getBoard.do")
	public void getBoard(BoardVO vo, Model model) {

		model.addAttribute("board", boardService.getBoard(vo)); // Model 정보 저장 }

	}

}
