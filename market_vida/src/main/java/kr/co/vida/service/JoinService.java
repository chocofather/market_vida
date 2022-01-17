package kr.co.vida.service;

import kr.co.vida.dto.CrewDTO;

public interface JoinService {
	public void register(CrewDTO crdto);
	int idcheck(String crew_id);
	int emailcheck(String crew_email);
}
