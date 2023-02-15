package board.service;

import java.util.List;

import board.dto.BoardDTO;

public interface BoardService {

	public List<BoardDTO> listProcess();
	public void writeProcess(BoardDTO dto);
	public BoardDTO readProcess(int num);
	public BoardDTO updateOneProcess(int num);
	public BoardDTO updateProcess(BoardDTO dto);
	public void deleteProcess(int num);
}//interface BoardService
