package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.BoardDAO;
import kr.co.domain.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;
	
	public List<BoardVO> list() throws Exception {
		// TODO Auto-generated method stub
		return dao.list();
	}
	
	public void write(BoardVO vo) throws Exception{
		dao.write(vo);;
	}

	@Override
	public BoardVO view(int board_id) throws Exception {
		return dao.view(board_id);
	}

	@Override
	public void update(BoardVO vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void delete(int board_id) throws Exception {
		dao.delete(board_id);
	}
}
