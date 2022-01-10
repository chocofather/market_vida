package kr.co.vida.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.vida.dao.CrewDAO;
import kr.co.vida.dto.CrewDTO;

@Service
public class CrewServiceImpl implements CrewService{

	
	@Autowired
	CrewDAO crdao;

	@Override
	public int loginCheck(CrewDTO crdto, HttpSession session) {
		int crew_no = crdao.loginCheck(crdto);
		if(crew_no > 0) {
			session.setAttribute("crew_id", crdto.getCrew_id());
			session.setAttribute("crew_pw", crdto.getCrew_pw());
		}
		return crew_no;
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();		
	}
}
