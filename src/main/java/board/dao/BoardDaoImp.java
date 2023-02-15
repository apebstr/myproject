package board.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import board.dto.BoardDTO;

public class BoardDaoImp implements BoardDAO {

	private SqlSessionTemplate sqlSession;
	
	public BoardDaoImp() {
		// TODO Auto-generated constructor stub
	}
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<BoardDTO> list() {
		return sqlSession.selectList("board.list");
	}

	@Override
	public void write(BoardDTO dto) {
		sqlSession.insert("board.write",dto);
	}

	@Override
	public BoardDTO read(int num) {
		return sqlSession.selectOne("board.read", num);
	}

	@Override
	public BoardDTO readCount(int num) {
		return sqlSession.selectOne("board.readcount", num);
	}

	@Override
	public BoardDTO update(BoardDTO dto) {
		return sqlSession.selectOne("board.update", dto);
	}
	
	@Override
	public void delete(int num) {
		sqlSession.delete("board.delete", num);
	}
}//class BoardDaoImp
