package kr.co.vida.service;

import java.util.List;
import java.util.logging.Logger;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import kr.co.vida.dao.LoginDAO;
import kr.co.vida.dto.CrewDTO;

@Service("crewservice")
public class LoginServiceImpl implements LoginService{

	
	@Autowired
	LoginDAO crdao;

	@Override
	public int loginCheck(CrewDTO crdto, HttpSession session) {
		int crew_count = crdao.loginCheck(crdto) ;
		if(crew_count > 0) {
			session.setAttribute("crew_id", crdto.getCrew_id());
			session.setAttribute("crew_pw", crdto.getCrew_pw());
		}
		return crew_count;
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();		
	}

	@Override
	public void register(CrewDTO crdto) {
		crdao.register(crdto);
	}
}
