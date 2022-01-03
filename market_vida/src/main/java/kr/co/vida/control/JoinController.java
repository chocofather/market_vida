package kr.co.vida.control;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.vida.dao.CDao;

@Controller
public class JoinController {
	@Autowired
	CDao cdao;
	
	@RequestMapping("join.do")
	public String join() {
		return "join";
	}
	@PostMapping("join.do")
	public String joinOk(HttpServletRequest req) {
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		
		return "redirect:main.do";
	}
}
