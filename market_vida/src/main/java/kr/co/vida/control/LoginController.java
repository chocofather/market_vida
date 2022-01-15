package kr.co.vida.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybatis.logging.Logger;
import org.mybatis.logging.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.vida.dao.LDao;
import kr.co.vida.dto.CrewDTO;
import kr.co.vida.service.LoginService;
import kr.co.vida.service.LoginServiceImpl;

@Controller
public class LoginController {

	@Autowired
	LDao crdao;
	
	@Autowired
	LoginServiceImpl crewservice;
	
	
	// 로그인
	@GetMapping("crew/login")
	public ModelAndView loginPage() {
		ModelAndView mv = new ModelAndView("crew/login");
		return mv;
	}
	
	@PostMapping("crew/login")
	public ModelAndView logincheck(@ModelAttribute CrewDTO crdto,
			HttpSession session) {
		int crew_count = crewservice.loginCheck(crdto,session);
		ModelAndView mv = new ModelAndView();	
		if(crew_count > 0) {
			mv.setViewName("crew/testmain");
			session.setAttribute("crew_id", crdto.getCrew_id());
			session.setAttribute("crew_no", crdto.getCrew_no());
			session.setAttribute("crew_name", crdto.getCrew_name());
			mv = new ModelAndView("redirect:testmain");
			mv.addObject("CREW",crdto);
			
			session.getMaxInactiveInterval();
		}else {
			mv.setViewName("crew/login");
			mv.addObject("message","error");
		}
		return mv;
	}
	/*
	// 로그아웃
	@PostMapping("crew/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		
		if(session !=null) session.invalidate();
		
		return "redirect:crew/login";
	}
	*/
	/*
	// 회원가입
	@RequestMapping(value="/register", method = RequestMethod.GET)
	public void getRegister() {
		
	}
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public String postRegister(CrewDTO crdto) {
		crewservice.register(crdto);
		return null;
	}
	*/
}
