package gdu.test.oraclecrud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import gdu.test.oraclecrud.service.BoardService;
import gdu.test.oraclecrud.vo.Board;

@Controller
public class BoardController {
	@Autowired private BoardService boardService;
	
	// 메인화면
	@GetMapping("/index")
	public String index() {
		return "index";
	}
	
	// 보드 리스트 페이지
	@GetMapping("/boardList")
	public List<Board> boardList(Model model) {
		List<Board> list = boardService.getBoardList();
		model.addAttribute("list", list);
		return list;
	}
	
	// 보드 상세보기 페이지
	@GetMapping("/boardOne")
	public String boardOne(Model model, @RequestParam(value="boardId") int boardId) {
		Board board = boardService.getBoardOne(boardId);
		model.addAttribute("board", board);
		return "boardOne";
	}
	
	// 보드 추가 페이지
	@GetMapping("/insertBoard")
	public String insertBoard() {
		return "insertBoard";
	}
	
	// 보드 추가
	@PostMapping("/insertBoard")
	public String insertBoard(Board board) {
		boardService.getInsertBoard(board);
		return "redirect:/boardList";
	}
	
	// 보드 삭제
	@GetMapping("/deleteBoard")
	public String deleteBoard(@RequestParam(value="boardId") int boardId) {
		boardService.getDeleteBoard(boardId);
		return "redirect:/boardList";
	}
	
	// 보드 수정
		@PostMapping("/modifyBoard")
		public String modifyBoard(Board board) {
			boardService.getModifyBoard(board);
			return "redirect:/boardOne?boardId="+board.getBoardId();
		}
		
	// 보드 수정 페이지
	@GetMapping("/modifyBoard")
	public Board modifyBoardList(Model model, @RequestParam(value="boardId") int boardId) {
		Board list = boardService.getModifyBoardList(boardId);
		model.addAttribute("list", list);
		return list;
	}
}
