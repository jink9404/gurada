package com.gurada.basic;

import java.io.IOException;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

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
	public void getBoardList(@RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage,
			@RequestParam(value = "searchType", required = false, defaultValue = "") String searchType,
			@RequestParam(value = "value", required = false, defaultValue = "") String value, Model model) {

		/*
		 * parameter으로 searchType 값을 writter를 받아오면 BoardVO에 writter에 value 값을 set
		 * parameter으로 searchType 값을 title를 받아오면 BoardVO에 title에 value 값을 set
		 */
		BoardVO vo = new BoardVO();

		if (searchType.equals("writter"))
			vo.setWritter(value);
		else if (searchType.equals("title"))
			vo.setTitle(value);

		int total = boardService.getBoardCount(vo);
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "10";
		}

		PagingVO pageVo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		List<BoardVO> list = boardService.getBoardList(vo, pageVo);
		model.addAttribute("boardList", list);
		model.addAttribute("paging", pageVo);
		// ViewResolver를 지정하지 않으면 아래처럼 페이지명 지정
		// return "views/getBoardList.jsp"; // View 이름 리턴
	}

	// 문의글 등록 하기
	@RequestMapping(value = "/saveBoard.do")
	public String insertBoard(BoardVO vo) throws IOException {
		boardService.insertBoard(vo);
		/*
		 * 문의글 등록시 관리자의 메일로 전송
		 */
		final String user = "";
		final String password="";
		Properties prop = new Properties();
		prop.put("mail.smtp.host", "192.168.0.11"); 
		prop.put("mail.smtp.port", 25); 
		prop.put("mail.smtp.auth", "true"); 
		prop.put("mail.smtp.ssl.enable", "false");
		//prop.put("mail.smtp.ssl.trust", "192.168.0.11");
		Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() { 
																protected PasswordAuthentication getPasswordAuthentication() {
																	return new PasswordAuthentication(user, password);}}
													);
		try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress("Q&A"));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress("jiseobg61@gmail.com"));  //수신자메일주소
            message.setSubject(vo.getWritter()+"님의 문의 : "+vo.getTitle()); //메일 제목을 입력
            message.setText(vo.getContents()+"\n이 메일은 송신전용 메일입니다.");    //메일 내용을 입력
            Transport.send(message); ////전송
            System.out.println("message sent successfully...");
        } catch (AddressException e) {e.printStackTrace();} catch (MessagingException e) {e.printStackTrace();}
		return "redirect:/qna.do";
	}

	// 문의 내용 보기
	@RequestMapping("/qna-getBoard.do")
	public void getBoard(BoardVO vo, Model model) {

		model.addAttribute("board", boardService.getBoard(vo)); // Model 정보 저장 }

	}

	// 게시글 삭제하기
	@RequestMapping("/deleteBoard.do")
	public String deleteBoard(BoardVO vo) {
		int rs = boardService.deleteBoard(vo);
		return "redirect:/qna.do";
	}

	// 게시글 수정
	@RequestMapping("/updateBoard.do")
	public String boardupdate3(BoardVO vo) {
		int rs = boardService.updateBoard(vo);
		return "redirect:/qna.do";
	}
}
