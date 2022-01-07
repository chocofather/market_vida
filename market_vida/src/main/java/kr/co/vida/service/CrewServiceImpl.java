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

	public void setCrdao(CrewDAO crdao) {
		this.crdao = crdao;
	}

	@Override
	public String loginCheck(CrewDTO crdto, HttpSession session){
		String name = crdao.loginCheck(crdto);
		if( name != null) {
			session.setAttribute("crew_id", crdto.getCrew_id());
			session.setAttribute("name", name);
		}
		return name;
	}

	public void logout(HttpSession session) {
		session.invalidate();
	}
	
	@Override
	public int idCheck(CrewDTO crdto, HttpSession session) {
		// TODO Auto-generated method stub
		return 0;
	}
	

	
	
}
