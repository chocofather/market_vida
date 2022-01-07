package kr.co.vida.control.crew;

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

@Controller
@RequestMapping("/crew/*")
public class CrewController {

	private static final Logger logger = LoggerFactory.getLogger(CrewController.class);
	@Autowired
	CRDao crdao;
	
	@RequestMapping("login.do")
	public String login() {
		return "crew/login";
	}
	
	@RequestMapping("logincheck.do")
	public ModelAndView logincheck(@ModelAttribute CrewDTO crdto,
			HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("crew/login");
		String name = CrewService.loginCheck(crdto,session);
		
		ModelAndView mav = new ModelAndView();
		if(name !=  null) {
			mav.setViewName("crew/main");
			mav.addObject("msg","success");
		}else {
			mav.setViewName("crew/login");
			mav.addObject("msg","failure");
		}
		return mav;
	}
	

	
}
