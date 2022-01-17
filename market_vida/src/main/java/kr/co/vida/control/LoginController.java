package kr.co.vida.control;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybatis.logging.Logger;
import org.mybatis.logging.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.vida.dto.CrewDTO;
import kr.co.vida.service.LoginService;
import kr.co.vida.service.LoginServiceImpl;

@Controller
public class LoginController {

	@Autowired
	LoginServiceImpl crewservice;

	// MailSendService mss;
	JavaMailSender mailSender;

	// 로그인
	@GetMapping("crew/login")
	public ModelAndView loginPage() {
		ModelAndView mv = new ModelAndView("crew/login");
		return mv;
	}

	@PostMapping("crew/login")
	public ModelAndView logincheck(@ModelAttribute CrewDTO crdto, HttpSession session) {
		int crew_count = crewservice.loginCheck(crdto, session);

		ModelAndView mv = new ModelAndView();
		if (crew_count > 0) {
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

			mv.addObject("crew", crdto);

			session.getMaxInactiveInterval();
		} else {
			mv.setViewName("crew/login");
			mv.addObject("message", "error");
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
	@RequestMapping(value = "crew/mailCheck", method = RequestMethod.GET)
	@ResponseBody
	public String mailCheckGET(String email) {
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;

		// 이메일 보내기
		String setFrom = "jd0922@naver.com";
		String toMail = email;
		String title = "vida market 이메일 인증 입니다.";
		String content = "vida market 아이디 찾기 이메일 인증입니다." + "<br><br>" + "인증 번호는" + checkNum + "입니다."
				+ "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";

		try {

			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content, true);
			mailSender.send(message);

		} catch (Exception e) {
			e.printStackTrace();
		}

		String num = Integer.toString(checkNum);

		return num;

	}

	// 소셜로그인
	@PostMapping("crew/kakao_login_form")
	public ModelAndView kakaoLogin(@ModelAttribute CrewDTO crdto, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();

		String crew_id = request.getParameter("kakaoemail");
		crdto.setCrew_id(crew_id);

		String crew_name = crewservice.findname(crew_id);

		if (crew_name != null) {
			crdto = crewservice.selectAll_id(crew_id);
			mv.setViewName("crew/testmain");
			session.setAttribute("crew_id", crdto.getCrew_id());
			session.setAttribute("crew_no", crdto.getCrew_no());
			session.setAttribute("crew_name", crdto.getCrew_name());
			mv = new ModelAndView("redirect:testmain");
			mv.addObject("CREW", crdto);

			session.getMaxInactiveInterval();
		} else {
			mv.setViewName("crew/join");
		}

		/*
		 * String url = request.getScheme() + "://" + request.getServerName() + ":" +
		 * request.getServerPort() + request.getContextPath() + "crew/testmain";
		 */

		return mv;
	}

	/*
	 * // 로그아웃
	 * 
	 * @PostMapping("crew/logout") public String logout(HttpServletRequest request)
	 * { HttpSession session = request.getSession(false);
	 * 
	 * if(session !=null) session.invalidate();
	 * 
	 * return "redirect:crew/login"; }
	 */
	/*
	 * // 회원가입
	 * 
	 * @RequestMapping(value="/register", method = RequestMethod.GET) public void
	 * getRegister() {
	 * 
	 * }
	 * 
	 * @RequestMapping(value="/register", method = RequestMethod.POST) public String
	 * postRegister(CrewDTO crdto) { crewservice.register(crdto); return null; }
	 */
}
