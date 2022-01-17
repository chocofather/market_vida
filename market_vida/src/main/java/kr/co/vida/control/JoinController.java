package kr.co.vida.control;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.vida.dto.CrewDTO;
import kr.co.vida.service.JoinServiceImpl;

@Controller
public class JoinController {

	@Autowired
	JoinServiceImpl joinservice;
	
	// 회원가입 페이지 이동
	@GetMapping("crew/join")
	public ModelAndView joinPage() {
		ModelAndView mv = new ModelAndView("crew/join");
		return mv;
	}
	@PostMapping("crew/join")
	public ModelAndView logincheck(@ModelAttribute CrewDTO crdto,
			HttpSession session) {
		ModelAndView mv = new ModelAndView();

		joinservice.register(crdto);
		mv.setViewName("/main/main");
		return mv;
		
	}

	// 아이디 중복 검사
	@RequestMapping(value = "crew/idcheck", method = RequestMethod.POST)
	@ResponseBody
	public int crewIdcheck(String crew_id) throws Exception{			
		int result = joinservice.idcheck(crew_id);
		System.out.println(result);
			return result;			
	} 
	
	// 이메일 중복 검사
	@RequestMapping(value = "crew/emailcheck", method = RequestMethod.POST)
	@ResponseBody
	public int crewEmailcheck(String crew_email) throws Exception{			
			int result = joinservice.emailcheck(crew_email);
			return result;			
	} 
	
}
