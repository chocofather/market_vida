package kr.co.vida.dao;

import kr.co.vida.dto.CrewDTO;

public interface CRDao {
	public boolean isExists(String id, String pwd);
	public boolean insertOne(CrewDTO dto);
}
