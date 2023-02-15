package members.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import members.service.MembersService;

// http://localhost:8090/myapp/members/join.do


@Controller
public class MembersController {
	
	private MembersService memService;

	public MembersController() {
		// TODO Auto-generated constructor stub
	}
	
	public void setMemService(MembersService memService) {
		this.memService = memService;
	}
	
	@RequestMapping(value="/members/join.do", method=RequestMethod.GET)
	public ModelAndView JoinExecute(ModelAndView mav) {
		mav.setViewName("members/join");
		return mav;
	}
	
}//MembersController
