package kr.co.vida.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestMainController {
	@RequestMapping(value= {"/","/testmain"})
	public String main() {
		return "testmain";
	}
	
}
