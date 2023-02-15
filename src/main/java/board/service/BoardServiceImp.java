package board.service;

import java.util.List;

import board.dao.BoardDAO;
import board.dto.BoardDTO;

public class BoardServiceImp implements BoardService{

	private BoardDAO boardDao;
	
	public BoardServiceImp() {
		// TODO Auto-generated constructor stub
	}
	
	public void setBoardDao(BoardDAO boardDao) {
		this.boardDao = boardDao;
	}

	@Override
	public List<BoardDTO> listProcess() {
		return boardDao.list();
	}

	@Override
	public void writeProcess(BoardDTO dto) {
		boardDao.write(dto);
	}

	@Override
	public BoardDTO readProcess(int num) {
		boardDao.readCount(num);
		return boardDao.read(num);
	}

	@Override
	public BoardDTO updateOneProcess(int num) {
		return boardDao.read(num);
	}
	
	@Override
	public BoardDTO updateProcess(BoardDTO dto) {
		return boardDao.update(dto);
	}
	
	@Override
	public void deleteProcess(int num) {
		boardDao.delete(num);
	}
	
}//class BoardServiceImp
