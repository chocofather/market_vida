package kr.co.vida.dao;

import kr.co.vida.dto.CrewDTO;

public interface CRDao {
	public String loginCheck(CrewDTO crdto);
	
	public void insertcrew(CrewDTO dto);
}
