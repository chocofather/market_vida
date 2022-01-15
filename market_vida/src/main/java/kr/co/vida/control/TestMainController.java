package kr.co.vida.control;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestMainController {
	@RequestMapping(value= {"/","crew/testmain"})
	public String main() {
		return "crew/testmain";
	}
	@RequestMapping("crew/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:testmain";
	}
}
