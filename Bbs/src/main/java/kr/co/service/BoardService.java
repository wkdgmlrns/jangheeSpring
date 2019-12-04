package kr.co.service;

import java.util.List;

import kr.co.domain.BoardVO;

public interface BoardService {
	public List<BoardVO> list() throws Exception;
	public void write(BoardVO vo) throws Exception;
	public BoardVO view(int board_id) throws Exception;
	public void update(BoardVO vo) throws Exception;
	public void delete(int board_id) throws Exception;
}
