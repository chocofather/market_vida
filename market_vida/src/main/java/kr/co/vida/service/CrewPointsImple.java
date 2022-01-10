package kr.co.vida.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.vida.dao.Dao;
import kr.co.vida.dto.CrewPointsDTO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("CrewPointService")
public class CrewPointsImple implements VidaService<CrewPointsDTO> {

	@Autowired
	Dao<CrewPointsDTO> dao;

	public void setDao(Dao<CrewPointsDTO> dao) {
		this.dao = dao;
	}

	@Override
	public List<CrewPointsDTO> selectAllList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CrewPointsDTO selectOne(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertOne(CrewPointsDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateOne(CrewPointsDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void dropOne(int no) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<CrewPointsDTO> selectAllList(int no) {
		return dao.getListAll(no);
	}


}
