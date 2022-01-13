package kr.co.vida.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class MainController {
	@RequestMapping(value = {"/","/main"})
	public String main() {
		return "/main/main";
	}
	
	@RequestMapping("/benefit")
	public String benefit() {
		return "/main/friendsBenefit";
	}
	
}
