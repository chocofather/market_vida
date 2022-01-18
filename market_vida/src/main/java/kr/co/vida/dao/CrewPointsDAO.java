package kr.co.vida.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.CrewPointsDTO;
import kr.co.vida.dto.CrewStartEnd;

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

	public List<CrewPointsDTO> getListAll(int no , int startNo , int endNo) {
		CrewStartEnd cse = new CrewStartEnd(no, startNo, endNo);
		return ss.selectList("kr.co.vida.crewpoint.selectPoint" , cse);
	}
	
	public int getTotal() {
		return ss.selectOne("kr.co.vida.crewpoint.getTotal");
	}
}
