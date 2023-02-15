package board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * Handles requests for the application home page.
 */

// http://localhost:8090/myapp/index.do

@Controller
public class IndexController {
	
	public IndexController() {
		// TODO Auto-generated constructor stub
	}
	
	@RequestMapping(value="/index.do")
	public String home() {
		return "index";
	}
	
}//class HomeController 
