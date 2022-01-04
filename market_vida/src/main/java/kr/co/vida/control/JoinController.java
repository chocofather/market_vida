package kr.co.vida.control;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.vida.dao.CRDao;
import kr.co.vida.dao.CrewDAO;
import kr.co.vida.dto.CrewDTO;

@Controller
public class JoinController {
	@Autowired
	CRDao cdao;
	
	@RequestMapping("join.do")
	public String join() {
		return "join";
	}
	
	@PostMapping("join.do")
	public String joinOk(@ModelAttribute("crdto") CrewDTO crdto) {
			
		cdao.insertOne(crdto);
		return "redirect:main.do";
	}
	
	/*
	@PostMapping("join.do")
	public String joinOk(HttpServletRequest req) {
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
	
		
		CrewDTO crdto = new CrewDTO();
		crdto.setCrew_Id(id);
		
		return "redirect:main.do";
	}
	*/
}
