package gdu.test.oraclecrud.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import gdu.test.oraclecrud.vo.Board;

@Mapper
public interface BoardMapper {
	// boardList
	public List<Board> selectboardList();
	// boardOne
	public Board selectboardOne(int boardId);
	// insertboard
	public int insertboard(Board board);
	// deleteboard
	public int deleteboard(int boardId);
	// modifyboard
	public int modifyboard(Board board);
	// modifyboardList
	public Board modifyboardList(int boardId);
}
