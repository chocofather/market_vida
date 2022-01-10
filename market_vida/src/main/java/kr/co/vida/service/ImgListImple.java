package kr.co.vida.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.vida.dao.Dao;
import kr.co.vida.dao.ImgDAO;
import kr.co.vida.dto.ImgDTO;

@Service("ImgListImple")
public class ImgListImple implements VidaService<ImgDTO>{
	
	@Autowired
	ImgDAO dao;
	

	@Override
	public List<ImgDTO> selectAllList() {
		return dao.getListAll();
	}
	
	public List<ImgDTO> getListBySubCode(int no) {
		return dao.getListBySubCode(no);
	}

	@Override
	public ImgDTO selectOne(int no) {
		return null;
	}

	@Override
	public void insertOne(ImgDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateOne(ImgDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void dropOne(int no) {
		// TODO Auto-generated method stub
		
	}

}
