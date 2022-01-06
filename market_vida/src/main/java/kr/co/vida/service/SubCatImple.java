package kr.co.vida.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.vida.dao.Dao;
import kr.co.vida.dao.SubCatDAO;
import kr.co.vida.dto.ImgDTO;
import kr.co.vida.dto.SubCatDTO;

@Service("SubCatImple")
public class SubCatImple implements VidaService<SubCatDTO>{
	
	@Autowired
	SubCatDAO dao;

	public List<SubCatDTO> getListAll(int no) {
		return dao.getListAll(no);
	}
	
	
	@Override
	public List<SubCatDTO> selectAllList() {
		return dao.getListAll();
	}

	@Override
	public SubCatDTO selectOne(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertOne(SubCatDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateOne(SubCatDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void dropOne(int no) {
		// TODO Auto-generated method stub
		
	}

}
