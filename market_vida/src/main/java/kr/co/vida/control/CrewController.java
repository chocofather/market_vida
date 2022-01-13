package kr.co.vida.control;

import javax.servlet.http.HttpSession;

import org.mybatis.logging.Logger;
import org.mybatis.logging.LoggerFactory;
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
import kr.co.vida.service.CrewServiceImpl;

@Controller
@RequestMapping("/vida/*")
public class CrewController {

	private static final Logger logger = LoggerFactory.getLogger(CrewController.class);
	@Autowired
	CRDao crdao;
	CrewServiceImpl crewservice;
	// 로그인
	@RequestMapping("/login.do")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/logincheck.do")
	public ModelAndView logincheck(@ModelAttribute CrewDTO crdto,
			HttpSession session) {
		int crew_no = crewservice.loginCheck(crdto,session);
		ModelAndView mv = new ModelAndView();
		
		ModelAndView mav = new ModelAndView();
		if(crew_no > 0) {
			mav.setViewName("crew/main");
			mav.addObject("msg","success");
		}else {
			mav.setViewName("crew/login");
			mav.addObject("msg","failure");
		}
		return mv;
	}
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session, ModelAndView mv) {
		crewservice.logout(session);
		mv.setViewName("crew/login");
		mv.addObject("msg","logout");
		return mv;
	}
	// 회원가입
	@RequestMapping(value="/register", method = RequestMethod.GET)
	public void getRegister() {
		
	}
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public String postRegister(CrewDTO crdto) {
		crewservice.register(crdto);
		return null;
	}
}
