package kr.co.dao;

import java.util.List;

import kr.co.domain.BoardVO;

public interface BoardDAO {
	public List<BoardVO> list() throws Exception;
	public void write(BoardVO vo) throws Exception;
	public BoardVO view(int board_id) throws Exception;
	public void update(BoardVO vo) throws Exception;
	public void delete(int board_id) throws Exception;
}
