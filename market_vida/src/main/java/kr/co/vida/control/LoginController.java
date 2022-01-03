package kr.co.vida.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.vida.dao.CDao;

@Controller
public class LoginController {
	
	@Autowired
	CDao cdao;
	
	@GetMapping("login.do")
	public String login() {
		return "login";
	}
	@PostMapping("login.do")
	public String loginOk(HttpServletRequest req, HttpSession session) {
		
	
	String id = req.getParameter("id");
	String pwd = req.getParameter("pwd");
	
	boolean result = cdao.isExists(id, pwd);
	
	if(!result) {
		return "redirect:login.do";
	}
	session.setAttribute("id", id);
	return "redirect:main.do";
	}
}
