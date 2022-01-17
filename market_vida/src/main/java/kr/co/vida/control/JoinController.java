package kr.co.vida.control;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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
		/*
		 private int crew_no;
		 private String crew_id;
		 private String crew_pw;
		 private String crew_name;
		 private String crew_email;
		 private String crew_phone;
		 private String grade;
		 private String crew_gender;
		 private String crew_birth;
		 */
		joinservice.register(crdto);
		mv.setViewName("/main/main");
		return mv;
		
	}
	@ResponseBody
	@RequestMapping(value = "crew/idcheck", method = RequestMethod.POST)
	public int idCheck(String crew_id) {
		return joinservice.idcheck(crew_id);
	}
}
