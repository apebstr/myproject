package board.dao;

import java.util.List;

import board.dto.BoardDTO;

public interface BoardDAO {
	public List<BoardDTO> list();
	public void write(BoardDTO dto);
	public BoardDTO read(int num);
	public BoardDTO readCount(int num);
	public BoardDTO update(BoardDTO dto);
	public void delete(int num);
}//interface BoardDAO
