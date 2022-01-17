package kr.co.vida.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.vida.dao.MainCatDAO;
import kr.co.vida.dto.MainCatDTO;

@Service
public class MainCatImple implements VidaService<MainCatDTO>{
	
	@Autowired
	MainCatDAO dao;

	@Override
	public List<MainCatDTO> selectAllList() {
		return dao.getListAll();
	}

	@Override
	public MainCatDTO selectOne(int no) {
		return dao.getOne(no);
	}

	@Override
	public void insertOne(MainCatDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateOne(MainCatDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void dropOne(int no) {
		// TODO Auto-generated method stub
		
	}

}
