package kr.co.vida.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.CrewPointsDTO;

@Repository
public class CrewPointsDAO implements Dao<CrewPointsDTO> {
	
	@Autowired
	private SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	@Override
	public List<CrewPointsDTO> getListAll() {
		return null;
	}

	@Override
	public CrewPointsDTO getOne(int no) {
		return null;
	}

	@Override
	public void addOne(CrewPointsDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifyOne(CrewPointsDTO dto) {
		ss.update("kr.co.vida.crewpoint.updateOne" , dto);
	}

	@Override
	public void deleteOne(int no) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<CrewPointsDTO> getListAll(int no) {
		return ss.selectList("kr.co.vida.crewpoint.selectPoint" , no);
	}

}
