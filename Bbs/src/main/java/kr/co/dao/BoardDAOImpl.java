package kr.co.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.domain.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Inject
	private SqlSession sql;
	private static String namespace = "kr.co.mappers.board";

	@Override
	public List<BoardVO> list() throws Exception {
		// TODO Auto-generated method stub
		return sql.selectList(namespace+".selectAll");
	}
	@Override
	public void write(BoardVO vo) throws Exception
	{
		sql.insert(namespace+".write", vo);
	}
	@Override
	public BoardVO view(int board_id) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".view",board_id);
	}
	@Override
	public void update(BoardVO vo) throws Exception{
		sql.update(namespace+".modify",vo);
		System.out.println(vo.getBoard_id());
	}
	@Override
	public void delete(int board_id) throws Exception {
		sql.delete(namespace+".delete",board_id);
	}
}
