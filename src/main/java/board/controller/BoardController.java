package board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import board.dto.BoardDTO;
import board.service.BoardService;

//http://localhost:8090/myapp/list.do

@Controller
public class BoardController {
	
	private BoardService boardService;
	
	public BoardController() {
		// TODO Auto-generated constructor stub
	}
	
	public void setBoardService(BoardService boardService) {
		this.boardService = boardService;
	}
	
	@RequestMapping(value="/list.do")
	public ModelAndView listExecute(ModelAndView mav) {
		mav.addObject("aList",boardService.listProcess());
		mav.setViewName("/board/list");
		return mav;
	}

	@RequestMapping(value="/write.do", method=RequestMethod.GET)
	public ModelAndView writeExecute(ModelAndView mav) {
		mav.setViewName("/board/write");
		return mav;
	}
	
	@RequestMapping(value="/write.do", method=RequestMethod.POST)
	public String writeProExecute(BoardDTO dto) {
		boardService.writeProcess(dto);
		return "redirect:/list.do";
	}
	
	@RequestMapping(value="/read.do", method=RequestMethod.GET)
	public ModelAndView readExecute(int num, ModelAndView mav) {
		mav.addObject("dto", boardService.readProcess(num));
		mav.setViewName("/board/read");
		return mav;
	}
	
	@RequestMapping(value="/update.do", method=RequestMethod.GET)
	public ModelAndView updateExecute(int num, ModelAndView mav) {
		mav.addObject("dto", boardService.updateOneProcess(num));
		mav.setViewName("/board/update");
		return mav;
	}
	
	@RequestMapping(value="/update.do", method=RequestMethod.POST)
	public String updateExecute(BoardDTO dto) {
		int num = dto.getNum();
		boardService.updateProcess(dto);
		return "redirect:/read.do?num="+num;
	}
	
	@RequestMapping(value="/delete.do")
	public String deleteExecute(int num) {
		boardService.deleteProcess(num);
		return "redirect:/list.do";
	}

}//class BoardController
