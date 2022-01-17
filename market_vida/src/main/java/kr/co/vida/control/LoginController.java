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

import kr.co.vida.dto.CrewDTO;
import kr.co.vida.service.LoginService;
import kr.co.vida.service.LoginServiceImpl;

@Controller
public class LoginController {


	@Autowired
	LoginServiceImpl crewservice;
	
	// MailSendService mss;
	
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
			mv.setViewName("/main/main");
			crdto = crewservice.selectAll_id(crdto.getCrew_id());
			session.setAttribute("crew_id", crdto.getCrew_id());
			session.setAttribute("crew_name", crdto.getCrew_name());
			session.setAttribute("crew_no", crdto.getCrew_no());
			session.setAttribute("crew_email", crdto.getCrew_email());
			session.setAttribute("crew_phone", crdto.getCrew_name());
			session.setAttribute("grade", crdto.getGrade());
			session.setAttribute("crew_gender", crdto.getCrew_gender());
			session.setAttribute("crew_birth", crdto.getCrew_birth());
			 
			mv = new ModelAndView("redirect:/main/main");
			
			mv.addObject("crew",crdto);
			
			session.getMaxInactiveInterval();
		}else {
			mv.setViewName("crew/login");
			mv.addObject("message","error");
		}
		return mv;
	}
	
	// 아이디 찾기
	@RequestMapping(value = "crew/find_id")
	public ModelAndView findId() {
		ModelAndView mv = new ModelAndView("crew/find_id");

		return mv;
	}
	// 이메일 인증
	@RequestMapping("crew/signUp")
	public void signUp(@ModelAttribute CrewDTO crdto){
	        // DB에 기본정보 insert
	       // crewservice.signUp(crdto);

	        //임의의 authKey 생성 & 이메일 발송
	       // String authKey = mss.sendAuthMail(crdto.getEmail());
	        //memberDTO.setAuthKey(authKey);

	        //Map<String, String> map = new HashMap<String, String>();
	       // map.put("email", memberDTO.getEmail());
	       // map.put("authKey", memberDTO.getAuthKey());
	       // System.out.println(map);

	      //DB에 authKey 업데이트
	      //memberService.updateAuthKey(map);

	  	}
	
	// 소셜로그인
	@PostMapping("crew/kakao_login_form")
	public ModelAndView kakaoLogin(@ModelAttribute CrewDTO crdto,
			HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		
		String crew_id = request.getParameter("kakaoemail");
		crdto.setCrew_id(crew_id);
		
		String crew_name = crewservice.findname(crew_id);
		
		if(crew_name !=null) {
			crdto = crewservice.selectAll_id(crew_id);
			mv.setViewName("crew/testmain");
			session.setAttribute("crew_id", crdto.getCrew_id());
			session.setAttribute("crew_no", crdto.getCrew_no());
			session.setAttribute("crew_name", crdto.getCrew_name());
			mv = new ModelAndView("redirect:testmain");
			mv.addObject("CREW",crdto);
			
			session.getMaxInactiveInterval();
		}else {
			mv.setViewName("crew/join");
		}
		
		/*
		String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
		+ request.getContextPath() + "crew/testmain";
		*/
		
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
