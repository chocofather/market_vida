package kr.co.vida.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.vida.dao.CRDao;
import kr.co.vida.dto.CrewDTO;

@Controller
public class LoginController {
	
	@Autowired
	CRDao cdao;
	
	@GetMapping("login.do")
	public String login() {
		return "login";
	}
	@PostMapping("login.do")
	public String loginOk(@ModelAttribute("crdto") CrewDTO crdto, HttpSession session) {
		
	
	boolean result = cdao.isExists(crdto.getCrew_Id(), crdto.getCrew_Pw());
	
	if(!result) {
		return "redirect:login.do";
	}
	session.setAttribute("id", crdto.getCrew_Id());
	return "redirect:main.do";
	}
}
