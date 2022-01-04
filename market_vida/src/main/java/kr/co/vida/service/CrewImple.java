package kr.co.vida.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.co.vida.dto.CrewDTO;

@Service("CrewImple")
public class CrewImple implements VidaService<CrewDTO>{

	@Override
	public List<CrewDTO> selectAllList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CrewDTO selectOne(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertOne(CrewDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateOne(CrewDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void dropOne(int no) {
		// TODO Auto-generated method stub
		
	}

}
