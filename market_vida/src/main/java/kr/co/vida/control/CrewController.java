package kr.co.vida.control;

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

import kr.co.vida.dao.CRDao;
import kr.co.vida.dto.CrewDTO;
import kr.co.vida.service.CrewService;
import kr.co.vida.service.CrewServiceImpl;

@Controller
public class CrewController {

	@Autowired
	CRDao crdao;
	@Autowired
	CrewServiceImpl crewservice;
	
	// 로그인
	@RequestMapping("/crew/login")
	public String loginPage() {
		return "/crew/login";
	}
	
	@PostMapping("/crew/login")
	public ModelAndView logincheck(@ModelAttribute CrewDTO crdto,
			HttpSession session) {
		int crew_no = crewservice.loginCheck(crdto,session);
		ModelAndView mv = new ModelAndView();	
		if(crew_no > 0) {
			mv.setViewName("crew/main");
			mv.addObject("msg","success");
		}else {
			mv.setViewName("crew/login");
			mv.addObject("msg","failure");
		}
		return mv;
	}
	@GetMapping("crew/login")
	public ModelAndView logout(HttpSession session, ModelAndView mv) {
		crewservice.logout(session);
		mv.setViewName("crew/login");
		mv.addObject("msg","logout");
		return mv;
	}
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
