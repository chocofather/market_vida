package kr.co.vida.dao;

import kr.co.vida.dto.CrewDTO;

public interface JDao {
	public void register(CrewDTO crdto);
	public int idcheck(String crew_id);
	public int emailcheck(String crew_email);
}
