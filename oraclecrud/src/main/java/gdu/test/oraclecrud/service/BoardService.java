package gdu.test.oraclecrud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import gdu.test.oraclecrud.mapper.BoardMapper;
import gdu.test.oraclecrud.vo.Board;

@Service
@Transactional
public class BoardService {
	@Autowired BoardMapper boardMapper;
	
	// 보드 전체 리스트
	public List<Board> getBoardList() {
		return boardMapper.selectboardList();
	}
	// 보드 상세보기
	public Board getBoardOne(int boardId) {
		return boardMapper.selectboardOne(boardId);
	}
	// 보드 추가
	public int getInsertBoard(Board board) {
		return boardMapper.insertboard(board);
	}
	// 보드 삭제
	public int getDeleteBoard(int boardId) {
		return boardMapper.deleteboard(boardId);
	}
	// 보드 수정
	public int getModifyBoard(Board board) {
		return boardMapper.modifyboard(board);
	}
	// 보드 수정페이지
	public Board getModifyBoardList(int boardId) {
		return boardMapper.modifyboardList(boardId);
	}
}
