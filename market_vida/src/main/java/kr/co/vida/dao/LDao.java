package kr.co.vida.dao;

import kr.co.vida.dto.CrewDTO;

public interface LDao {
	public int loginCheck(CrewDTO crdto);
	public void register(CrewDTO crdto);
}
