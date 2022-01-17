package kr.co.vida.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.CrewDTO;

@Repository
public class JoinDAO implements JDao{

	@Autowired
	private SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	@Override
	public void register(CrewDTO crdto) {
		ss.insert("kr.co.vida.crew.insertcrew",crdto);
	}

	@Override
	public int idcheck(String crew_id) {
		
		return ss.selectOne("kr.co.vida.crew.idcheck", crew_id);
	}

	@Override
	public int emailcheck(String crew_email) {
		return ss.selectOne("kr.co.vida.crew.emailcheck", crew_email);
	}
	
	
}
