package kr.co.vida.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.vida.dao.JoinDAO;
import kr.co.vida.dto.CrewDTO;

@Service("joinservice")
public class JoinServiceImpl implements JoinService{

	@Autowired
	JoinDAO jdao;
	
	@Override
	public void register(CrewDTO crdto) {
		jdao.register(crdto);
	}

	@Override
	public int idcheck(String crew_id) {
		return jdao.idcheck(crew_id);
	}

	@Override
	public int emailcheck(String crew_email) {
		return jdao.emailcheck(crew_email);
	}

}
