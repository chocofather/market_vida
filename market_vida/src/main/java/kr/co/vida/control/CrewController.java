package kr.co.vida.control;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.vida.dao.CRDao;
import kr.co.vida.dto.CrewDTO;
import kr.co.vida.service.CrewService;

@Controller
public class CrewController {

	@Autowired
	CRDao crdao;
	
	@RequestMapping("login.do")
	public String login() {
		return "login";
	}
	
	@RequestMapping("login_check.do")
	public ModelAndView login_check(@ModelAttribute CrewDTO crdto, HttpSession session) {
		// String crew_no = CrewService.loginCheck(crdto, session);
		ModelAndView mav = new ModelAndView();
		
		return mav; 
	}
	
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session, ModelAndView mav) {
		CrewService.logout(session);
		mav.setViewName("login");
		mav.addObject("message", "logout");
		return mav;
		
	}
	
}
