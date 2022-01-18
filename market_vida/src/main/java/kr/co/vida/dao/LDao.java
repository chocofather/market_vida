package kr.co.vida.dao;

import java.util.List;

import kr.co.vida.dto.CrewDTO;

public interface LDao {
	public int loginCheck(CrewDTO crdto);
	public void register(CrewDTO crdto);
	public String findId(CrewDTO crdto);
	public int idcheck(String crew_id);
	public String findname(String crew_id);
	public CrewDTO selectAll_id(String crew_id);
}
