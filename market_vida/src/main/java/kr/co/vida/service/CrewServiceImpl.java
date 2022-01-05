package kr.co.vida.service;

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
	public String loginCheck(CrewDTO crdto, HttpSession session) {
		String crew_no = crdao.loginCheck(crdto);
		if( crew_no != null) {
			session.setAttribute("crew_id", crdto.getCrew_id());
			session.setAttribute("name", crdto.getCrew_name());
		}
		return crew_no;
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate(); // 세션 초기화
		
	}
	
	
}
